.text

#MiPs 32 registradores ($t1,$s0,$a...) -> cada um desses possuem 32Bits.

li $t1, 10
li $t2, 8

and $t0, $t1, $t2
andi $t3, $t1, 8

#OR/ ORI/ NOR/ XOR /XORI...

slt $t4, $t1, $t2 #10 < 8 (1 v 0 f)
slti $t5, $t1, 150

sll $s0, $t1, 2 #deslocando 2 casas a ESQUERDA (2 elevado a X vezes 10) (2^x)*10 (10 é por causa do t1)
srl $t7, $t1, 2 #deslocando 2 casas a DIREITA (10 dividido por 2 elevado a X) 10/(2^x)