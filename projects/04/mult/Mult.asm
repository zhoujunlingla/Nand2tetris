// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
@tmp 
M = 0//tmp = 0
@i
M = 0 // i = 0

(loop)
@i
D = M // D = i
@R0
D = D - M // D = D - R0
@MOVE
D;JEQ 
@R1
D = M //D = R1
@tmp
M = M + D //tmp = tmp + D
@i
M = M + 1 // i = i + 1
@loop
0;JMP

(MOVE)
@tmp
D = M // D = tmp
@R2
M = D // R2 = D
(END)
@END
0;JMP
