class Parser:
    def __init__(self, filename):
        try:
            self._file = open(filename + ".asm", "r")
        except:
            Parser._error("File", -1, "Cannot open file.")
            return

        # error handling
        self._flag = True
        self._line = -1
        self._errm = ""

        self._labels = {}
        self._variables = {}

        # input
        self._lines = []
        self._read_lines()

        self._parse_lines()
        if not self._flag:
            Parser._error("S&C", self._line, self._errm)
            return

        self._nested = 0

        self._parse_macros()
        if not self._flag:
            Parser._error("MACRO", self._line, self._errm)
            return

        self._parse_symbols()
        if not self._flag:
            Parser._error("SYM", self._line, self._errm)
            return

        self._parse_commands()
        if not self._flag:
            Parser._error("COM", self._line, self._errm)
            return

        print("Labels:")
        print(self._labels)
        print("Variables:")
        print(self._variables)

        # write to a .hack file
        try:
            self._outfile = open(filename + ".hack", "w")
        except:
            Parser._error("File", -1, "Cannot open output file.")
            return

        try:
            self._write_file()
        except:
            Parser._error("File", -1, "Cannot write to output file.")
            return

    from parse_lines import _parse_lines, _parse_line
    from parse_macros import _parse_macros, _parse_macro, _create_while, _create_mv, _create_swp, _create_sum
    from parse_symbs import _parse_symbols, _parse_symbol, _parse_variable, _init_labels
    from parse_comms import _parse_commands, _parse_command, _init_comms

    def _read_lines(self):
        n = 0
        for line in self._file:
            self._lines.append((line, n, n))
            n += 1

    def _write_file(self):
        for (line, p, o) in self._lines:
            self._outfile.write(line)
            if line[-1] != "\n":
                self._outfile.write("\n")

    def _iter_lines(self, func):
        newlines = []
        i = 0

        for (line, p, o) in self._lines:
            newline = func(line, p, o)

            if isinstance(newline, list):    # check if a given variable is of type "snd arg"
                for c in newline:
                    if len(c) > 0:
                        newlines.append((c, i, o))
                        i = i + 1 if c[0] != "(" else i
            else:
                if len(newline) > 0:
                    newlines.append((newline, i, o))
                    i = i + 1 if newline[0] != "(" else i

        self._lines = newlines

    @staticmethod
    def _error(src, line, msg):
        if len(src) > 0 and line > -1:
            print("[" + src + ", " + str(line) + "] " + msg)
        elif len(src) > 0:
            print("[" + src + "] " + msg)
        else:
            print(msg)


if __name__ == "__main__":
    Parser("zad3a")
