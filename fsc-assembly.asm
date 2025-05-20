# ===============================
# .word   -> inteiro (32 bits)
# .half   -> inteiro curto (16 bits)
# .byte   -> inteiro pequeno (8 bits)
# .float  -> n�mero real (32 bits, ponto flutuante)
# .double -> n�mero real (64 bits, ponto flutuante)
# .asciiz -> texto (string terminada com '\0')
# .ascii  -> texto (string sem '\0' no final)
# .space  -> reserva espa�o (em bytes) na mem�ria
# ===============================

.data
	num1: .word 10        #  vari�vel num1 com valor 10
	num2: .word 20        #  vari�vel num2 com valor 10
	br: .asciiz "\n"      #  quebra de linha visual

.text
	li $v0, 1             #  c�digo para imprimir n�mero inteiro
	lw $a0, num1          #  carregando o valor do num1 (10) no espa�o $a0
	syscall               #  chamando para imprimir

	li $v0, 4             #  c�digo para imprimir string
	la $a0, br            #  carregando a quebra de linha no espa�o $a0
	syscall               #  chamando para imprimir

	li $v0, 1             #  c�digo para imprimir
	lw $a0, num2          #  carregando o valor do num1 (20) no espa�o $a0
	syscall               #  chamando para imprimir

	li $v0, 4             #  c�digo para imprimir string
	la $a0, br            #  carregando a quebra de linha no espa�o $a0
	syscall               #  chamando para imprimir
	           
	lw $t0, num1
	lw $t1, num2
	add $t2, $t0, $t1     #  somando os valores do $t0 + $t1 e guardando em $t2
	
	li $v0, 1
    	move $a0, $t2        #  move o valor de $t2 para $a0 para impress�o
    	syscall
	
	li $v0, 10            #  c�digo para encerrar o programa
	syscall