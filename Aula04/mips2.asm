.text
li $t0, 0
li $t2, 0

C: ble $t0, 2, loop #WHILE
	j exit

loop:
	addi $t0, $t0 ,1
	addi $t2, $t2, 1
	j C
exit: