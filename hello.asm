# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	m1: .asciiz "Enter an integer:\n"
	m2: .asciiz "Hello Pandemic World of 2021!\nThe magic number is "
	m3: .asciiz "!!!\n"

#Text Area (i.e. instructions)
.text
main:

	li $v0, 4
	la $a0, m1
	syscall

	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, m2
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, m3
	syscall

exit:
	li $v0, 10
	syscall

