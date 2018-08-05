// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(BEGIN)
@SCREEN
D=A
@R2
M=D
@KEYBOARD
D=M
@R3
M=D
(LOOP)
 @R2
 D=M
 @CLEAR
 M;JEQ
 A=-1
 M=M+1
 @LOOP
 D;JNE
 @BEGIN
 D;JEQ
 (CLEAR)
 @R2
 A=0
 M=M+1
 @LOOP
 D;JEQ
 @BEGIN
 D;JNE
(END)
