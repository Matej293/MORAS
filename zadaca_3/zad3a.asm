@3
D = A

@R0
M = D

@4
D = A

@R1
M = D

@j
M = D

@mul
M = 1

$WHILE(j)
$MV(R0, i)

@sum
M = 0

$WHILE(i)
$SUM(sum, mul, sum)

@i
M = M - 1
$END

$MV(sum, mul)

@j
M = M - 1
$END

$MV(mul, R2)

(End)
@End
0;JMP
