// sp

@256
D=A
@SP
M=D
// call main.main 0

@main.main$ret0
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@main.main
0;JMP
(main.main$ret0)
// ep

($EP$)
@$EP$
0;JMP
// function main 0

(main.main)
// 	push constant 5

@5
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 15

@15
D=A
@SP
M=M+1
A=M-1
M=D
// 	call mid.mid 3

@mid.mid$ret1
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@mid.mid
0;JMP
(mid.mid$ret1)
// 	pop static 1

@SP
AM=M-1
D=M
@main.1
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret2
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret2)
// 	pop static 2

@SP
AM=M-1
D=M
@main.2
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.div 2

@divmod.div$ret3
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.div
0;JMP
(divmod.div$ret3)
//     pop static 3

@SP
AM=M-1
D=M
@main.3
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.mod 2

@divmod.mod$ret4
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.mod
0;JMP
(divmod.mod$ret4)
//     pop static 4

@SP
AM=M-1
D=M
@main.4
M=D
// 	push constant 100  // A = [2, 3, 4, 6, 7, 8, 9] at addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop pointer 1

@SP
AM=M-1
D=M
@4
M=D
// 	push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 0

@0
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 3

@3
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 1

@1
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 4

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 2

@2
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 6

@6
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 3

@3
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 4

@4
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 5

@5
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 9

@9
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 6

@6
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 100  // addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 7  // len(A)

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 4  // x

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	call bsearch.bsearch 3

@bsearch.bsearch$ret5
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@bsearch.bsearch
0;JMP
(bsearch.bsearch$ret5)
// 	pop static 5

@SP
AM=M-1
D=M
@main.5
M=D
// 	return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label END

(main.main$END)
// 	goto END

@main.main$END
0;JMP
// sp

@256
D=A
@SP
M=D
// call main.main 0

@main.main$ret6
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@main.main
0;JMP
(main.main$ret6)
// ep

($EP$)
@$EP$
0;JMP
// function main 0

(mid.main)
// 	push constant 5

@5
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 15

@15
D=A
@SP
M=M+1
A=M-1
M=D
// 	call mid.mid 3

@mid.mid$ret7
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@mid.mid
0;JMP
(mid.mid$ret7)
// 	pop static 1

@SP
AM=M-1
D=M
@mid.1
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret8
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret8)
// 	pop static 2

@SP
AM=M-1
D=M
@mid.2
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.div 2

@divmod.div$ret9
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.div
0;JMP
(divmod.div$ret9)
//     pop static 3

@SP
AM=M-1
D=M
@mid.3
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.mod 2

@divmod.mod$ret10
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.mod
0;JMP
(divmod.mod$ret10)
//     pop static 4

@SP
AM=M-1
D=M
@mid.4
M=D
// 	push constant 100  // A = [2, 3, 4, 6, 7, 8, 9] at addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop pointer 1

@SP
AM=M-1
D=M
@4
M=D
// 	push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 0

@0
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 3

@3
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 1

@1
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 4

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 2

@2
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 6

@6
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 3

@3
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 4

@4
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 5

@5
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 9

@9
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 6

@6
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 100  // addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 7  // len(A)

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 4  // x

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	call bsearch.bsearch 3

@bsearch.bsearch$ret11
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@bsearch.bsearch
0;JMP
(bsearch.bsearch$ret11)
// 	pop static 5

@SP
AM=M-1
D=M
@mid.5
M=D
// 	return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label END

(mid.main$END)
// 	goto END

@mid.main$END
0;JMP
// function mid 3

(mid.mid)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt 

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB12
D;JGT
@LAB13
D=0;JMP
(LAB12)
D=-1
(LAB13)
@SP
A=M-1
M=D
//     if-goto x_gt_y

@SP
AM=M-1
D=M+1
@mid.mid$x_gt_y
D;JEQ
//         push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB14
D;JGT
@LAB15
D=0;JMP
(LAB14)
D=-1
(LAB15)
@SP
A=M-1
M=D
//         if-goto y_gt_z

@SP
AM=M-1
D=M+1
@mid.mid$y_gt_z
D;JEQ
//             push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//             return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_y

(mid.mid$x_gt_y)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB16
D;JGT
@LAB17
D=0;JMP
(LAB16)
D=-1
(LAB17)
@SP
A=M-1
M=D
//     if-goto x_gt_z

@SP
AM=M-1
D=M+1
@mid.mid$x_gt_z
D;JEQ
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label y_gt_z

(mid.mid$y_gt_z)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB18
D;JGT
@LAB19
D=0;JMP
(LAB18)
D=-1
(LAB19)
@SP
A=M-1
M=D
//     if-goto x_gt_z2

@SP
AM=M-1
D=M+1
@mid.mid$x_gt_z2
D;JEQ
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_z

(mid.mid$x_gt_z)
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB20
D;JGT
@LAB21
D=0;JMP
(LAB20)
D=-1
(LAB21)
@SP
A=M-1
M=D
//     if-goto y_gt_z2

@SP
AM=M-1
D=M+1
@mid.mid$y_gt_z2
D;JEQ
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_z2

(mid.mid$x_gt_z2)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label y_gt_z2

(mid.mid$y_gt_z2)
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// sp

@256
D=A
@SP
M=D
// call main.main 0

@main.main$ret22
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@main.main
0;JMP
(main.main$ret22)
// ep

($EP$)
@$EP$
0;JMP
// function main 0

(fibonacci.main)
// 	push constant 5

@5
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 15

@15
D=A
@SP
M=M+1
A=M-1
M=D
// 	call mid.mid 3

@mid.mid$ret23
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@mid.mid
0;JMP
(mid.mid$ret23)
// 	pop static 1

@SP
AM=M-1
D=M
@fibonacci.1
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret24
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret24)
// 	pop static 2

@SP
AM=M-1
D=M
@fibonacci.2
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.div 2

@divmod.div$ret25
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.div
0;JMP
(divmod.div$ret25)
//     pop static 3

@SP
AM=M-1
D=M
@fibonacci.3
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.mod 2

@divmod.mod$ret26
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.mod
0;JMP
(divmod.mod$ret26)
//     pop static 4

@SP
AM=M-1
D=M
@fibonacci.4
M=D
// 	push constant 100  // A = [2, 3, 4, 6, 7, 8, 9] at addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop pointer 1

@SP
AM=M-1
D=M
@4
M=D
// 	push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 0

@0
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 3

@3
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 1

@1
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 4

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 2

@2
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 6

@6
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 3

@3
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 4

@4
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 5

@5
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 9

@9
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 6

@6
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 100  // addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 7  // len(A)

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 4  // x

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	call bsearch.bsearch 3

@bsearch.bsearch$ret27
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@bsearch.bsearch
0;JMP
(bsearch.bsearch$ret27)
// 	pop static 5

@SP
AM=M-1
D=M
@fibonacci.5
M=D
// 	return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label END

(fibonacci.main$END)
// 	goto END

@fibonacci.main$END
0;JMP
// function mid 3

(fibonacci.mid)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt 

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB28
D;JGT
@LAB29
D=0;JMP
(LAB28)
D=-1
(LAB29)
@SP
A=M-1
M=D
//     if-goto x_gt_y

@SP
AM=M-1
D=M+1
@fibonacci.mid$x_gt_y
D;JEQ
//         push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB30
D;JGT
@LAB31
D=0;JMP
(LAB30)
D=-1
(LAB31)
@SP
A=M-1
M=D
//         if-goto y_gt_z

@SP
AM=M-1
D=M+1
@fibonacci.mid$y_gt_z
D;JEQ
//             push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//             return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_y

(fibonacci.mid$x_gt_y)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB32
D;JGT
@LAB33
D=0;JMP
(LAB32)
D=-1
(LAB33)
@SP
A=M-1
M=D
//     if-goto x_gt_z

@SP
AM=M-1
D=M+1
@fibonacci.mid$x_gt_z
D;JEQ
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label y_gt_z

(fibonacci.mid$y_gt_z)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB34
D;JGT
@LAB35
D=0;JMP
(LAB34)
D=-1
(LAB35)
@SP
A=M-1
M=D
//     if-goto x_gt_z2

@SP
AM=M-1
D=M+1
@fibonacci.mid$x_gt_z2
D;JEQ
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_z

(fibonacci.mid$x_gt_z)
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB36
D;JGT
@LAB37
D=0;JMP
(LAB36)
D=-1
(LAB37)
@SP
A=M-1
M=D
//     if-goto y_gt_z2

@SP
AM=M-1
D=M+1
@fibonacci.mid$y_gt_z2
D;JEQ
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_z2

(fibonacci.mid$x_gt_z2)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label y_gt_z2

(fibonacci.mid$y_gt_z2)
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// function fibonacci 1

(fibonacci.fibonacci)
@SP
M=M+1
A=M-1
M=0
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
//     lt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB38
D;JLT
@LAB39
D=0;JMP
(LAB38)
D=-1
(LAB39)
@SP
A=M-1
M=D
//     if-goto base

@SP
AM=M-1
D=M+1
@fibonacci.fibonacci$base
D;JEQ
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret40
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret40)
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 1

@1
D=A
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret41
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret41)
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label base

(fibonacci.fibonacci$base)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// sp

@256
D=A
@SP
M=D
// call main.main 0

@main.main$ret42
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@main.main
0;JMP
(main.main$ret42)
// ep

($EP$)
@$EP$
0;JMP
// function main 0

(divmod.main)
// 	push constant 5

@5
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 15

@15
D=A
@SP
M=M+1
A=M-1
M=D
// 	call mid.mid 3

@mid.mid$ret43
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@mid.mid
0;JMP
(mid.mid$ret43)
// 	pop static 1

@SP
AM=M-1
D=M
@divmod.1
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret44
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret44)
// 	pop static 2

@SP
AM=M-1
D=M
@divmod.2
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.div 2

@divmod.div$ret45
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.div
0;JMP
(divmod.div$ret45)
//     pop static 3

@SP
AM=M-1
D=M
@divmod.3
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.mod 2

@divmod.mod$ret46
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.mod
0;JMP
(divmod.mod$ret46)
//     pop static 4

@SP
AM=M-1
D=M
@divmod.4
M=D
// 	push constant 100  // A = [2, 3, 4, 6, 7, 8, 9] at addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop pointer 1

@SP
AM=M-1
D=M
@4
M=D
// 	push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 0

@0
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 3

@3
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 1

@1
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 4

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 2

@2
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 6

@6
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 3

@3
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 4

@4
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 5

@5
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 9

@9
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 6

@6
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 100  // addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 7  // len(A)

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 4  // x

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	call bsearch.bsearch 3

@bsearch.bsearch$ret47
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@bsearch.bsearch
0;JMP
(bsearch.bsearch$ret47)
// 	pop static 5

@SP
AM=M-1
D=M
@divmod.5
M=D
// 	return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label END

(divmod.main$END)
// 	goto END

@divmod.main$END
0;JMP
// function mid 3

(divmod.mid)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt 

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB48
D;JGT
@LAB49
D=0;JMP
(LAB48)
D=-1
(LAB49)
@SP
A=M-1
M=D
//     if-goto x_gt_y

@SP
AM=M-1
D=M+1
@divmod.mid$x_gt_y
D;JEQ
//         push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB50
D;JGT
@LAB51
D=0;JMP
(LAB50)
D=-1
(LAB51)
@SP
A=M-1
M=D
//         if-goto y_gt_z

@SP
AM=M-1
D=M+1
@divmod.mid$y_gt_z
D;JEQ
//             push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//             return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_y

(divmod.mid$x_gt_y)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB52
D;JGT
@LAB53
D=0;JMP
(LAB52)
D=-1
(LAB53)
@SP
A=M-1
M=D
//     if-goto x_gt_z

@SP
AM=M-1
D=M+1
@divmod.mid$x_gt_z
D;JEQ
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label y_gt_z

(divmod.mid$y_gt_z)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB54
D;JGT
@LAB55
D=0;JMP
(LAB54)
D=-1
(LAB55)
@SP
A=M-1
M=D
//     if-goto x_gt_z2

@SP
AM=M-1
D=M+1
@divmod.mid$x_gt_z2
D;JEQ
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_z

(divmod.mid$x_gt_z)
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB56
D;JGT
@LAB57
D=0;JMP
(LAB56)
D=-1
(LAB57)
@SP
A=M-1
M=D
//     if-goto y_gt_z2

@SP
AM=M-1
D=M+1
@divmod.mid$y_gt_z2
D;JEQ
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_z2

(divmod.mid$x_gt_z2)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label y_gt_z2

(divmod.mid$y_gt_z2)
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// function fibonacci 1

(divmod.fibonacci)
@SP
M=M+1
A=M-1
M=0
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
//     lt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB58
D;JLT
@LAB59
D=0;JMP
(LAB58)
D=-1
(LAB59)
@SP
A=M-1
M=D
//     if-goto base

@SP
AM=M-1
D=M+1
@divmod.fibonacci$base
D;JEQ
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret60
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret60)
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 1

@1
D=A
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret61
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret61)
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label base

(divmod.fibonacci$base)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// function div 2

(divmod.div)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//     push constant 0

@0
D=A
@SP
M=M+1
A=M-1
M=D
//     pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     pop local 1 

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// label while_loop 

(divmod.div$while_loop)
//     push local 1 

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     lt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB62
D;JLT
@LAB63
D=0;JMP
(LAB62)
D=-1
(LAB63)
@SP
A=M-1
M=D
//     if-goto end

@SP
AM=M-1
D=M+1
@divmod.div$end
D;JEQ
//         push local 0

@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 1 

@1
D=A
@SP
M=M+1
A=M-1
M=D
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//         push local 1

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         pop local 1

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//         goto while_loop

@divmod.div$while_loop
0;JMP
// label end

(divmod.div$end)
//     push local 0

@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// function mod 2

(divmod.mod)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//     push constant 0

@0
D=A
@SP
M=M+1
A=M-1
M=D
//     pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     pop local 1 

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// label while_loop2 

(divmod.mod$while_loop2)
//     push local 1 

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     lt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB64
D;JLT
@LAB65
D=0;JMP
(LAB64)
D=-1
(LAB65)
@SP
A=M-1
M=D
//     if-goto end2

@SP
AM=M-1
D=M+1
@divmod.mod$end2
D;JEQ
//         push local 0

@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 1 

@1
D=A
@SP
M=M+1
A=M-1
M=D
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//         push local 1

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         pop local 1

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//         goto while_loop2

@divmod.mod$while_loop2
0;JMP
// label end2

(divmod.mod$end2)
//     push local 1

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// sp

@256
D=A
@SP
M=D
// call main.main 0

@main.main$ret66
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@main.main
0;JMP
(main.main$ret66)
// ep

($EP$)
@$EP$
0;JMP
// function main 0

(bsearch.main)
// 	push constant 5

@5
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 15

@15
D=A
@SP
M=M+1
A=M-1
M=D
// 	call mid.mid 3

@mid.mid$ret67
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@mid.mid
0;JMP
(mid.mid$ret67)
// 	pop static 1

@SP
AM=M-1
D=M
@bsearch.1
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret68
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret68)
// 	pop static 2

@SP
AM=M-1
D=M
@bsearch.2
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.div 2

@divmod.div$ret69
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.div
0;JMP
(divmod.div$ret69)
//     pop static 3

@SP
AM=M-1
D=M
@bsearch.3
M=D
//     push constant 10

@10
D=A
@SP
M=M+1
A=M-1
M=D
//     push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
//     call divmod.mod 2

@divmod.mod$ret70
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.mod
0;JMP
(divmod.mod$ret70)
//     pop static 4

@SP
AM=M-1
D=M
@bsearch.4
M=D
// 	push constant 100  // A = [2, 3, 4, 6, 7, 8, 9] at addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop pointer 1

@SP
AM=M-1
D=M
@4
M=D
// 	push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 0

@0
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 3

@3
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 1

@1
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 4

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 2

@2
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 6

@6
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 3

@3
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 7

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 4

@4
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 8

@8
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 5

@5
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 9

@9
D=A
@SP
M=M+1
A=M-1
M=D
// 	pop that 6

@6
D=A
@THAT
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// 	push constant 100  // addr 100

@100
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 7  // len(A)

@7
D=A
@SP
M=M+1
A=M-1
M=D
// 	push constant 4  // x

@4
D=A
@SP
M=M+1
A=M-1
M=D
// 	call bsearch.bsearch 3

@bsearch.bsearch$ret71
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@bsearch.bsearch
0;JMP
(bsearch.bsearch$ret71)
// 	pop static 5

@SP
AM=M-1
D=M
@bsearch.5
M=D
// 	return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label END

(bsearch.main$END)
// 	goto END

@bsearch.main$END
0;JMP
// function mid 3

(bsearch.mid)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt 

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB72
D;JGT
@LAB73
D=0;JMP
(LAB72)
D=-1
(LAB73)
@SP
A=M-1
M=D
//     if-goto x_gt_y

@SP
AM=M-1
D=M+1
@bsearch.mid$x_gt_y
D;JEQ
//         push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB74
D;JGT
@LAB75
D=0;JMP
(LAB74)
D=-1
(LAB75)
@SP
A=M-1
M=D
//         if-goto y_gt_z

@SP
AM=M-1
D=M+1
@bsearch.mid$y_gt_z
D;JEQ
//             push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//             return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_y

(bsearch.mid$x_gt_y)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB76
D;JGT
@LAB77
D=0;JMP
(LAB76)
D=-1
(LAB77)
@SP
A=M-1
M=D
//     if-goto x_gt_z

@SP
AM=M-1
D=M+1
@bsearch.mid$x_gt_z
D;JEQ
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label y_gt_z

(bsearch.mid$y_gt_z)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB78
D;JGT
@LAB79
D=0;JMP
(LAB78)
D=-1
(LAB79)
@SP
A=M-1
M=D
//     if-goto x_gt_z2

@SP
AM=M-1
D=M+1
@bsearch.mid$x_gt_z2
D;JEQ
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_z

(bsearch.mid$x_gt_z)
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB80
D;JGT
@LAB81
D=0;JMP
(LAB80)
D=-1
(LAB81)
@SP
A=M-1
M=D
//     if-goto y_gt_z2

@SP
AM=M-1
D=M+1
@bsearch.mid$y_gt_z2
D;JEQ
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label x_gt_z2

(bsearch.mid$x_gt_z2)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label y_gt_z2

(bsearch.mid$y_gt_z2)
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// function fibonacci 1

(bsearch.fibonacci)
@SP
M=M+1
A=M-1
M=0
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
//     lt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB82
D;JLT
@LAB83
D=0;JMP
(LAB82)
D=-1
(LAB83)
@SP
A=M-1
M=D
//     if-goto base

@SP
AM=M-1
D=M+1
@bsearch.fibonacci$base
D;JEQ
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 2

@2
D=A
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret84
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret84)
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 1

@1
D=A
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         call fibonacci.fibonacci 1

@fibonacci.fibonacci$ret85
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@fibonacci.fibonacci
0;JMP
(fibonacci.fibonacci$ret85)
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label base

(bsearch.fibonacci$base)
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// function div 2

(bsearch.div)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//     push constant 0

@0
D=A
@SP
M=M+1
A=M-1
M=D
//     pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     pop local 1 

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// label while_loop 

(bsearch.div$while_loop)
//     push local 1 

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     lt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB86
D;JLT
@LAB87
D=0;JMP
(LAB86)
D=-1
(LAB87)
@SP
A=M-1
M=D
//     if-goto end

@SP
AM=M-1
D=M+1
@bsearch.div$end
D;JEQ
//         push local 0

@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 1 

@1
D=A
@SP
M=M+1
A=M-1
M=D
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//         push local 1

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         pop local 1

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//         goto while_loop

@bsearch.div$while_loop
0;JMP
// label end

(bsearch.div$end)
//     push local 0

@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// function mod 2

(bsearch.mod)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//     push constant 0

@0
D=A
@SP
M=M+1
A=M-1
M=D
//     pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     pop local 1 

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// label while_loop2 

(bsearch.mod$while_loop2)
//     push local 1 

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     lt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB88
D;JLT
@LAB89
D=0;JMP
(LAB88)
D=-1
(LAB89)
@SP
A=M-1
M=D
//     if-goto end2

@SP
AM=M-1
D=M+1
@bsearch.mod$end2
D;JEQ
//         push local 0

@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push constant 1 

@1
D=A
@SP
M=M+1
A=M-1
M=D
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//         push local 1

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//         pop local 1

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//         goto while_loop2

@bsearch.mod$while_loop2
0;JMP
// label end2

(bsearch.mod$end2)
//     push local 1

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// function bsearch 3

(bsearch.bsearch)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
//     push constant 0

@0
D=A
@SP
M=M+1
A=M-1
M=D
//     pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//     push argument 1

@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push constant 1

@1
D=A
@SP
M=M+1
A=M-1
M=D
//     sub

@SP
AM=M-1
D=M
A=A-1
M=M-D
//     pop local 1 

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// label while_loop

(bsearch.bsearch$while_loop)
//     push local 0 

@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push local 1 

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB90
D;JGT
@LAB91
D=0;JMP
(LAB90)
D=-1
(LAB91)
@SP
A=M-1
M=D
//     if-goto end

@SP
AM=M-1
D=M+1
@bsearch.bsearch$end
D;JEQ
//         push local 0

@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push local 1 

@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         push constant 2 

@2
D=A
@SP
M=M+1
A=M-1
M=D
//         call divmod.div 2

@divmod.div$ret92
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@divmod.div
0;JMP
(divmod.div$ret92)
//         pop local 2

@2
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//         push local 2 

@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         pop pointer 1

@SP
AM=M-1
D=M
@4
M=D
//         push that 0

@0
D=A
@THAT
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         eq

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB93
D;JEQ
@LAB94
D=0;JMP
(LAB93)
D=-1
(LAB94)
@SP
A=M-1
M=D
//     if-goto found

@SP
AM=M-1
D=M+1
@bsearch.bsearch$found
D;JEQ
//         push local 2 

@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//         pop pointer 1

@SP
AM=M-1
D=M
@4
M=D
//         push that 0

@0
D=A
@THAT
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         push argument 2

@2
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//         gt

@SP
AM=M-1
D=M
A=A-1
D=M-D
@LAB95
D;JGT
@LAB96
D=0;JMP
(LAB95)
D=-1
(LAB96)
@SP
A=M-1
M=D
//     if-goto higher

@SP
AM=M-1
D=M+1
@bsearch.bsearch$higher
D;JEQ
//         goto lower

@bsearch.bsearch$lower
0;JMP
// label end

(bsearch.bsearch$end)
//     push constant 1 

@1
D=A
@SP
M=M+1
A=M-1
M=D
//     neg

@SP
A=M-1
M=-M
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label found

(bsearch.bsearch$found)
//     push local 2

@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push argument 0

@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     add

@SP
AM=M-1
D=M
A=A-1
M=M+D
//     return

@LCL
D=M
@R15
M=D
@5
D=A
@R15
A=M-D
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R15
AM=M-1
D=M
@THAT
M=D
@R15
AM=M-1
D=M
@THIS
M=D
@R15
AM=M-1
D=M
@ARG
M=D
@R15
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
// label higher

(bsearch.bsearch$higher)
//     push local 2

@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push constant 1 

@1
D=A
@SP
M=M+1
A=M-1
M=D
//     sub 

@SP
AM=M-1
D=M
A=A-1
M=M-D
//     pop local 1

@1
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//     goto while_loop 

@bsearch.bsearch$while_loop
0;JMP
// label lower

(bsearch.bsearch$lower)
//     push local 2

@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
//     push constant 1 

@1
D=A
@SP
M=M+1
A=M-1
M=D
//     add 

@SP
AM=M-1
D=M
A=A-1
M=M+D
//     pop local 0

@0
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//     goto while_loop

@bsearch.bsearch$while_loop
0;JMP
