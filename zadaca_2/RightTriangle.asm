@4096
D=A
@i
M=D

@16
D=A
@j
M=D

@8
D=A
@R0
M=D

(Diagonal)
@i
D=M
@2048
D=A+D     //gornji offset
@10
D=A+D     // lijevi offset
@R0
D=M+D

@SCREEN
A=A+D
M=1

D=A   // prep for bit shift
@R5
M=D
@j
D=M
@R4
M=D
@MultSelf //bit shift
0;JMP

(Back1)

@j
M=M-1
D=M
@JZero
D;JEQ

(Back2)

@32
D=A
@i
M=M-D
D=M

@VerticalInit
D;JEQ

@Diagonal
0;JMP

(JZero)
@16
D=A
@j
M=D
@R0
M=M-1
@Back2
0;JMP

(MultSelf)  // r5 adresa mjesta, r4 iterator
@R4
M=M-1
D=M
@Back1
D;JEQ
@R5
A=M
D=M
M=D+M
@MultSelf
0;JMP


(VerticalInit)
@4096
D=A
@i
M=D

(Vertical)
@i
D=M
@2048
D=A+D     //gornji offset
@11
D=A+D     // lijevi offset

@SCREEN
A=A+D
M=M+1

@32
D=A
@i
M=M-D
D=M
@Vertical
D;JGT

@2091
D=A
@SCREEN
A=A+D
M=M-1

@8
D=A
@i
M=D

(Horizontal)
@i
D=M
@6144
D=A+D     //gornji offset
@10
D=A+D     // lijevi offset
@SCREEN
A=A+D
M=0
M=!M
@i
M=M-1
D=M
@Horizontal
D;JGT

(EndLoop)
@EndLoop
0;JMP