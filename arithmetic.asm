# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	li $v0, 5
	syscall

	move $t0, $v0

	li $v0, 5
	syscall

	move $t1, $v0

	li $v0, 5
	syscall

	move $t2, $v0

	sub $t3, $t0, $t1

	li $a0, 100

	mult $a0, $t2
	mflo $t4

	sll $t5, $t3, 6

	add $t6, $t4, $t5

	li $v0, 1
	move $a0, $t6
	syscall

exit:
	li $v0, 10
	syscall

