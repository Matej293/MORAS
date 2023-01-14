class Parser:
    def __init__(self):
        self._file = None
        self._name = None
        self._flag = True
        self._lab = 0
        self._labels = []
        self._ilines = []
        self._olines = []
        self._func = ""

    def parseFile(self, filename):
        try:
            self._file = open(filename + ".vm", "r")
        except:
            Parser._error("File", -1, "Cannot open source file.")
            return

        self._name = filename

        try:
            self._readFile()
        except:
            Parser._error("File", -1, "Cannot read source file.")
            return

        self._getLabels()

        if not self._parseLines():
            return

    def writeFile(self, filename):
        try:
            self._file = open(filename + ".asm", "w")
        except:
            Parser._error("File", -1, "Cannot open destination file.")
            return

        try:
            self._writeFile()
        except:
            Parser._error("File", -1, "Cannot write to destination file.")
            return

    def _getLabels(self):
        split_lines = [line.split("//")[0].split() for line, n in self._ilines]
        valid_lines = [split_line for split_line in split_lines if
                       split_line and split_line[0] == "label" and len(split_line) == 2]
        self._labels = [line[1] for line in valid_lines]

    def _parseLines(self):
        parsed_lines = [self._parseLine(line, n) for line, n in self._ilines]
        valid_lines = [line for line in parsed_lines if line and len(line) > 0]
        if not self._flag:
            return False
        self._olines += valid_lines
        return True

    def _parseLine(self, line, n):
        l = line.split("//")[0].split()
        if len(l) == 0 or len(l[0]) == 0:
            return ""

        if l[0] == "push":
            if len(l) == 3:
                return f"// {line}\n{self._push(l[1], l[2], n)}"
            else:
                self._flag = False
                Parser._error("Parser", n, "Undefined command")
                return ""

        elif l[0] == "pop":
            if len(l) == 3:
                return f"// {line}\n{self._pop(l[1], l[2], n)}"
            else:
                self._flag = False
                Parser._error("Parser", n, "Undefined command")
                return ""

        elif len(l) > 1 or l[0] == "return":
            if l[0] == "label" and len(l) == 2:
                return f"// {line}\n{self._label(l[1], n)}"
            elif l[0] == "goto" and len(l) == 2:
                return f"// {line}\n{self._goto(l[1], n)}"
            elif l[0] == "if-goto" and len(l) == 2:
                return f"// {line}\n{self._ifgoto(l[1], n)}"
            elif l[0] == "function" and len(l) == 3:
                return f"// {line}\n{self._function(l[1], l[2], n)}"
            elif l[0] == "call" and len(l) == 3:
                return f"// {line}\n{self._call(l[1], l[2], n)}"
            elif l[0] == "return" and len(l) == 1:
                return f"// {line}\n{self._return(n)}"

        elif len(l) == 1:
            return f"// {line}\n{self._comm(l[0], n)}"

        return ""

    def _label(self, lab, n):
        return f"({self._func}${lab})"

    def _goto(self, lab, n):
        if lab not in self._labels:
            self._flag = False
            Parser._error("GOTO", n, f"Invalid label: {lab}")
            return ""

        return f"@{self._func}${lab}\n0;JMP"

    def _ifgoto(self, lab, n):
        if lab not in self._labels:
            self._flag = False
            Parser._error("IFGOTO", n, f"Invalid label: {lab}")
            return ""

        return f"@SP\nAM=M-1\nD=M+1\n@{self._func}${lab}\nD;JEQ"

    def _function(self, func, nvars, n):
        self._func = f"{self._name}.{func}"
        s = f"({self._name}.{func})"
        for i in range(int(nvars)):
            s += "\n@SP\nM=M+1\nA=M-1\nM=0"
        return s

    def _return(self, n):
        s = "@LCL\nD=M\n@R15\nM=D\n"
        s += "@5\nD=A\n@R15\nA=M-D\nD=M\n@R14\nM=D\n"
        s += "@SP\nAM=M-1\nD=M\n@ARG\nA=M\nM=D\n"
        s += "@ARG\nD=M+1\n@SP\nM=D\n"
        s += "@R15\nAM=M-1\nD=M\n@THAT\nM=D\n"
        s += "@R15\nAM=M-1\nD=M\n@THIS\nM=D\n"
        s += "@R15\nAM=M-1\nD=M\n@ARG\nM=D\n"
        s += "@R15\nAM=M-1\nD=M\n@LCL\nM=D\n"
        s += "@R14\nA=M\n0;JMP"
        return s

    def _call(self, func, nargs, n):
        retAddrLabel = func + "$ret" + str(self._lab)
        self._lab += 1
        s = "@" + retAddrLabel + "\nD=A\n@SP\nM=M+1\nA=M-1\nM=D\n"
        s += "@LCL\nD=M\n@SP\nM=M+1\nA=M-1\nM=D\n"
        s += "@ARG\nD=M\n@SP\nM=M+1\nA=M-1\nM=D\n"
        s += "@THIS\nD=M\n@SP\nM=M+1\nA=M-1\nM=D\n"
        s += "@THAT\nD=M\n@SP\nM=M+1\nA=M-1\nM=D\n"
        s += "@" + str(5 + int(nargs)) + "\nD=A\n@SP\nD=M-D\n@ARG\nM=D\n"
        s += "@SP\nD=M\n@LCL\nM=D\n"
        s += "@" + func + "\n0;JMP\n"
        s += "(" + retAddrLabel + ")"
        return s

    def _valid_loc(self, loc, n):
        if loc.isdigit() and int(loc) >= 0:
            return True
        else:
            self._flag = False
            Parser._error("Push", n, "Location should be a non-negative integer")
            return False

    def _push(self, src, loc, n):
        if not self._valid_loc(loc, n):
            return ""

        if src == "constant":
            l = "@" + str(loc) + "\nD=A\n"
        elif src == "local":
            l = "@" + str(loc) + "\nD=A\n@LCL\nA=D+M\nD=M\n"
        elif src == "argument":
            l = "@" + str(loc) + "\nD=A\n@ARG\nA=D+M\nD=M\n"
        elif src == "this":
            l = "@" + str(loc) + "\nD=A\n@THIS\nA=D+M\nD=M\n"
        elif src == "that":
            l = "@" + str(loc) + "\nD=A\n@THAT\nA=D+M\nD=M\n"
        elif src == "static":
            l = "@" + self._name + "." + str(loc) + "\nD=M"
        elif src == "temp":
            l = "@" + str(5 + int(loc)) + "\nD=M"
        elif src == "pointer":
            l = "@" + str(3 + int(loc)) + "\nD=M"
        else:
            self._flag = False
            Parser._error("Push", n, "Undefined source \"" + src + "\".")
            return ""
        return l + "@SP\nM=M+1\nA=M-1\nM=D"

    def _pop(self, dst, loc, n):
        if not self._valid_loc(loc, n):
            return ""

        if dst == "local":
            l = "@" + str(loc) + "\nD=A\n@LCL\nD=D+M\n@R15\nM=D\n@SP\nAM=M-1\nD=M\n@R15\nA=M\nM=D"
        elif dst == "argument":
            l = "@" + str(loc) + "\nD=A\n@ARG\nD=D+M\n@R15\nM=D\n@SP\nAM=M-1\nD=M\n@R15\nA=M\nM=D"
        elif dst == "this":
            l = "@" + str(loc) + "\nD=A\n@THIS\nD=D+M\n@R15\nM=D\n@SP\nAM=M-1\nD=M\n@R15\nA=M\nM=D"
        elif dst == "that":
            l = "@" + str(loc) + "\nD=A\n@THAT\nD=D+M\n@R15\nM=D\n@SP\nAM=M-1\nD=M\n@R15\nA=M\nM=D"
        elif dst == "static":
            l = "@SP\nAM=M-1\nD=M\n@" + self._name + "." + str(loc) + "\nM=D"
        elif dst == "temp":
            l = "@SP\nAM=M-1\nD=M\n@" + str(5 + int(loc)) + "\nM=D"
        elif dst == "pointer":
            l = "@SP\nAM=M-1\nD=M\n@" + str(3 + int(loc)) + "\nM=D"
        else:
            self._flag = False
            Parser._error("Push", n, "Undefined destination \"" + dst + "\".")
            return ""
        return l

    def _comm(self, comm, n):
        if comm == "add":
            l = "@SP\nAM=M-1\nD=M\nA=A-1\nM=M+D"
        elif comm == "sub":
            l = "@SP\nAM=M-1\nD=M\nA=A-1\nM=M-D"
        elif comm == "neg":
            l = "@SP\nA=M-1\nM=-M"
        elif comm == "and":
            l = "@SP\nAM=M-1\nD=M\nA=A-1\nM=M&D"
        elif comm == "or":
            l = "@SP\nAM=M-1\nD=M\nA=A-1\nM=M|D"
        elif comm == "not":
            l = "@SP\nA=M-1\nM=!M"
        elif comm == "eq":
            l1 = "LAB" + str(self._lab)
            l2 = "LAB" + str(self._lab + 1)
            self._lab += 2
            l = "@SP\nAM=M-1\nD=M\nA=A-1\nD=M-D\n" + \
                "@" + str(l1) + "\nD;JEQ\n" + "@" + str(l2) + "\nD=0;JMP\n" + \
                "(" + str(l1) + ")\nD=-1\n" + "(" + str(l2) + ")\n" + \
                "@SP\nA=M-1\nM=D"
        elif comm == "lt":
            l1 = "LAB" + str(self._lab)
            l2 = "LAB" + str(self._lab + 1)
            self._lab += 2
            l = "@SP\nAM=M-1\nD=M\nA=A-1\nD=M-D\n" + \
                "@" + str(l1) + "\nD;JLT\n" + "@" + str(l2) + "\nD=0;JMP\n" + \
                "(" + str(l1) + ")\nD=-1\n" + "(" + str(l2) + ")\n" + \
                "@SP\nA=M-1\nM=D"
        elif comm == "gt":
            l1 = "LAB" + str(self._lab)
            l2 = "LAB" + str(self._lab + 1)
            self._lab += 2
            l = "@SP\nAM=M-1\nD=M\nA=A-1\nD=M-D\n" + \
                "@" + str(l1) + "\nD;JGT\n" + "@" + str(l2) + "\nD=0;JMP\n" + \
                "(" + str(l1) + ")\nD=-1\n" + "(" + str(l2) + ")\n" + \
                "@SP\nA=M-1\nM=D"
        elif comm == "ep":
            l = "($EP$)\n@$EP$\n0;JMP"
        elif comm == "sp":
            l = "@256\nD=A\n@SP\nM=D"
        else:
            self._flag = False
            Parser._error("Push", n, "Undefined command \"" + comm + "\".")
            return ""
        return l

    def _readFile(self):
        n = 0
        for line in self._file:
            if len(line) > 0:
                self._ilines.append((line, n))
            n += 1

    def _writeFile(self):
        for line in self._olines:
            self._file.write(line + "\n")

    @staticmethod
    def _error(src, line, msg):
        if len(src) > 0 and line > -1:
            print("[" + src + ", " + str(line + 1) + "] " + msg)
        elif len(src) > 0:
            print("[" + src + "] " + msg)
        else:
            print(msg)


def main():
    P = Parser()
    P.parseFile("main")
    P.parseFile("mid")
    P.parseFile("fibonacci")
    P.parseFile("divmod")
    P.parseFile("bsearch")
    P.writeFile("output")


if __name__ == '__main__':
    main()
