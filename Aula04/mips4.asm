.data #0x10010000 por padrao

#word (0x00000000)
#half (0x0000->[0000]<-)
#byte (0x000000->[00]<-)

a: .word 2,6,5 #vetor de 3 valores

.text

la $s1 a #atribuindo ao s1 o valor de a a = 0x10010000
#MEM --> REG (LW/LH/LB)
lw $t1,0($s1) #T1=REG S1=MEM / DESLOCA A MEMORIA 0x10010000+0 = 0X10010000
lw $t2, 4($s1) #DESLOCA A MEMORIA 0x10010000+4 = 0X10010004

#LOAD MEM --> REG
#STORE REG --> MEM