.data

f1: .asciiz "Entre com o primeiro valor: "
f2: .asciiz "Entre com o segundo valor: "
f3: .asciiz "Entre com o terceiro valor: "

f_maior: .asciiz "\n É maior que 100"
f_menor: .asciiz "\n É menor que 100"
f_igual: .asciiz "\n É igual a 100"

.text

#Primeiro valor

la $a0, f1 # carrega a frase
li $v0, 4 #mostra a string
syscall
li $v0, 5 #recebe o valor
syscall
add $t1, $v0, 0 #add o valor a t1

#Segundo valor

la $a0, f1 # carrega a frase
li $v0, 4 #mostra a string
syscall
li $v0, 5 #recebe o valor
syscall
add $t2, $v0, 0 #add o valor a t2

#Terceiro valor

la $a0, f1 # carrega a frase
li $v0, 4 #mostra a string
syscall
li $v0, 5 #recebe o valor
syscall
add $t3, $v0, 0 #add o valor a t3


#processamento

add $t1, $t1, $t2
add $t1, $t1, $t3

blt $t1,100, menor
bgt $t1,100, maior
la $a0, f_igual
li $v0, 4
syscall
j fim

maior:
la $a0, f_maior
li $v0, 4
syscall
j fim

menor:
la $a0, f_menor
li $v0, 4
syscall
j fim

fim:
li $v0, 10
syscall





