.text

# x = 5 + 4 --> tipo R
# A = 5 --> $t1
# B = 4 --> $t2
# X = A + B --> $t3 = $t1 + $t2

#li = load immediate
li $t1, 5
li $t2, 4
add $t3, $t1, $t2

li $v0, 1 #Imprimindo um INT
move $a0, $t2
syscall

li $v0, 5 #Imprimindo um INT
syscall


# X = 10 + 125 ---> Tipo I
# A = 10 ---> $s0
# B = 125
# X ---> s1

li $s0,10
addi $s1, $s0, 125

#Subtração

sub $t4, $s1, $t1
subi $t0, $t4, 100

#Multiplicação

mul $s6, $t6, $t7
mul $s5, $t6, 3

#Divisão

div $s7, $t2, 2

