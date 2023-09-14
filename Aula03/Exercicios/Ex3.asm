.text
.globl main
main:
    # Carrega o valor de 'a' em $t0
    li $t0, 54
    # Carrega o valor de 'b' em $t1
    li $t1, 45

    # Soma os valores de 'a' e 'b' em $t2
    add $t2, $t0, $t1

    # Prepara os argumentos para a função printf
    move $a0, $t2

    # Chama a função printf
    li $v0, 1
    syscall

    # Termina o programa
    li $v0, 10
    syscall
