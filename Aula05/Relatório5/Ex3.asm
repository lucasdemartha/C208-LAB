.data
a: .word 4, 5
	
.text

la $s1, a
lw $t2, 0($s1)

li $t1, 0

bge $t2, 5, ELSE
addi $t1, $t1, 2
sw $t1, 0($s1)
j EXIT
		
ELSE:
lw $t2, 4($s1)
addi $t1, $t2, 10
		
EXIT: