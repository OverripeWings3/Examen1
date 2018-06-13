# ********
#
# Created By: Santiago Jacobus Trasviña
# Expediente: is699367
# Date: 13 Jun 2018
#
# ********

.data
	VectorV: .word 1, 2, 3
	Vector1: .word 1, 2, 3
	Vector2: .word 4, 5, 6
	Vector3: .word 7, 8, 9
	VectorM: .word Vector1, Vector2, Vector3
	VectorR: .word 0, 0, 0

.text



Main:
	la $s0, VectorV
	la $s1, VectorM
	la $s4, VectorR
	li $s5, 0x09		# limit
	li $s6, 0		# i
	li $s7, 0		# j
	j For1

For1:	

	sll $t0, $s6, 2
	sll $t1, $s6, 2
	add $t0, $t0, $s1	# Poniendo dirección de memoria en t0
	add $t1, $t1, $s4
	slt $t8, $t5, $s5
	beq $t8, $zero, Exit	# Salta a Exit si t5 no es menor a s5 (t5 < 9)
	addi $s6, $s6, 1
	j For2

For2:
	sll $t2, $s7, 2
	sll $t3, $s7, 2
	lw $t2, 0($t0)		# Agrega a t2 lo que haya en t0
	beq 
	addi $s7, $s7, 1
	j For2

Exit: