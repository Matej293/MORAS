def _parse_symbols(self):
    self._init_labels()
    self._iter_lines(self._parse_symbol)
    self._counter = 16
    self._iter_lines(self._parse_variable)


def _parse_symbol(self, line, p, o):
    if line[0] != "(":
        return line
    elif line[-1] != ")":
        self._flag = False
        self._line = o
        self._errm = "Syntax error"
    else:
        label = line[1:].split(")")[0]
        lablen = len(line[1:].split(")"))

        if lablen != 2:
            self._flag = False
            self._line = o
            self._errm = "Invalid label"

        else:
            self._labels[label] = str(p)

    return ""


def _parse_variable(self, line, p, o):
    if line[0] != "@":
        return line

    var = line[1:]

    if var.isdigit():
        return line

    if var in self._labels.keys():
        return "@" + self._labels[var]
    elif var in self._variables.keys():
        return "@" + self._variables[var]
    else:
        self._variables[var] = str(self._counter)
        self._counter += 1
        return "@" + str(self._counter - 1)


def _init_labels(self):
    self._labels = {
        "SCREEN": "16384",
        "KBD": "24576",
        "SP": "0",
        "LCL": "1",
        "ARG": "2",
        "THIS": "3",
        "THAT": "4"
    }

    for i in range(0, 16):
        self._labels["R" + str(i)] = str(i)
