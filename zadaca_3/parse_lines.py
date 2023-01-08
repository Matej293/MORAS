def _parse_lines(self):
    self._comment = False   # comment flag
    self._iter_lines(self._parse_line)


def _parse_line(self, line, p, o):
    i = 0
    l = ""

    while i < len(line) - 1:
        p = line[i] + line[i + 1]

        if not self._comment and p == "*/":
            self._flag = False
            self._line = o
            self._errm = "Unbalanced comment delimiter"

        elif (p == "/*" and not self._comment) or (p == "*/" and self._comment):
            self._comment = not self._comment
            i += 1
        elif p == "//":
            break
        elif not line[i].isspace() and not self._comment:
            l += line[i]

        i += 1

    return l
