.data
prompt: .asciiz "Digite sua idade: "
result: .asciiz "Sua idade daqui a 30 anos será: "

.text
.globl main

main:
    # Solicitar a idade do usuário
    li $v0, 4
    la $a0, prompt
    syscall

    # Ler a entrada do usuário
    li $v0, 5
    syscall
    move $t0, $v0  # $t0 contém a idade fornecida pelo usuário

    # Adicionar 30 à idade
    li $t1, 30
    add $t2, $t0, $t1  # $t2 contém a idade daqui a 30 anos

    # Exibir a idade daqui a 30 anos
    li $v0, 4
    la $a0, result
    syscall

    # Exibir o valor de $t2 (idade daqui a 30 anos)
    li $v0, 1
    move $a0, $t2
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall
