#// Solución PR3 curso 23-24
#// Manejo de matrices con funciones
#
#
#typedef struct {
#  int nFil;
nFil = 0	# El desplazamiento al campo dentro de la estructura
#  int nCol;
nCol = 4	# El desplazamiento al campo dentro de la estructura
#  float elementos[];
elementos = 8	# El desplazamiento al campo dentro de la estructura
#} structMat;
#

sizeF = 4	# Numero de bytes de un float
LF = 10		# Caracter salto de línea
	.data
#structMat mat1 {
#  6,
#  6,
#  {
#    11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
#    21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
#    31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
#    41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
#    51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
#    61.61, 62.62, 63.63, 64.64, 65.65, 66.66
#  }
#};
mat1:	.word	6
	.word	6
	.float	11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
	.float	21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
	.float	31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
	.float	41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
	.float	51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
	.float	61.61, 62.62, 63.63, 64.64, 65.65, 66.66

#structMat mat2 {
#  7,
#  10,
#  {
#    -36.886, -58.201,  78.671,  19.092, -50.781,  33.961, -59.511, 12.347,  57.306,  -1.938,
#    -86.858, -81.852,  54.623, -22.574,  88.217,  64.374,  52.312, 47.918, -83.549,  19.041,
#     4.255, -36.842,  82.526,  27.394,  56.527,  39.448,  18.429, 97.057,  76.933,  14.583,
#    67.79 ,  -9.861, -96.191,  32.369, -18.494, -43.392,  39.857, 80.686, -36.87 , -17.786,
#    30.073,  89.938,  -6.889,  64.601, -85.018,  70.559, -48.853, -62.627, -60.147,  -5.524,
#    84.323, -51.718,  93.127, -10.757,  32.119,  98.214,  69.471, 73.814,   3.724,  57.208,
#    -41.528, -17.458, -64.226, -71.297, -98.745,   7.095, -79.112, 33.819,  63.531, -96.181
#  }
#};
mat2:	.word	7
	.word	10
	.float	-36.886, -58.201,  78.671,  19.092, -50.781,  33.961, -59.511, 12.347,  57.306,  -1.938,
	.float	-86.858, -81.852,  54.623, -22.574,  88.217,  64.374,  52.312, 47.918, -83.549,  19.041,
	.float	4.255, -36.842,  82.526,  27.394,  56.527,  39.448,  18.429, 97.057,  76.933,  14.583,
	.float	67.79 ,  -9.861, -96.191,  32.369, -18.494, -43.392,  39.857, 80.686, -36.87 , -17.786,
	.float	30.073,  89.938,  -6.889,  64.601, -85.018,  70.559, -48.853, -62.627, -60.147,  -5.524,
	.float	84.323, -51.718,  93.127, -10.757,  32.119,  98.214,  69.471, 73.814,   3.724,  57.208,
	.float	-41.528, -17.458, -64.226, -71.297, -98.745,   7.095, -79.112, 33.819,  63.531, -96.181

# structMat mat3 {
#   1,
#   8,
#   {
#     -36.52,  35.3 ,  79.05, -58.69, -55.23, -19.44, -88.63, -93.61
#   }
# };
mat3:	.word	1
	.word	8
	.float	-36.52,  35.3 ,  79.05, -58.69, -55.23, -19.44, -88.63, -93.61

# structMat mat4 {
#   16,
#   1,
#   { -90.57, -65.11, -58.21, -73.23, -89.38, -79.25,  16.82,  66.3 ,
#     -96.14, -97.16, -24.66,   5.27, -33.5 , -13.09,  27.13, -74.83 }
# };
mat4:	.word	16
	.word	1
	.float	-90.57, -65.11, -58.21, -73.23, -89.38, -79.25,  16.82,  66.3
	.float	-96.14, -97.16, -24.66,   5.27, -33.5 , -13.09,  27.13, -74.83

# structMat mat5 {
#   1,
#   1,
#   { 78.98 }
# };
mat5:	.word	1
	.word	1
	.float	78.98

# structMat mat6 {
#   0,
#   0,
#   { 0 }
# };
mat6:	.word	0
	.word	0
	.float	0.0

#float infinito = INFINITY;
infinito:	.word	0x7F800000

# Cadenas de caracteres
str_titulo:	.asciiz	"\nComienza programa manejo matrices con funciones\n"
str_menu:	.ascii	"(0) Terminar el programa\n"
		.ascii	"(1) Cambiar la matriz de trabajo\n"
		.ascii	"(3) Cambiar el valor de un elemento\n"
		.ascii	"(4) Intercambiar un elemento con su opuesto\n"
		.ascii	"(7) Encontrar el minimo\n"
		.asciiz	"\nIntroduce opción elegida: "
str_errorOpc:	.asciiz	"Error: opcion incorrecta\n"
str_termina:	.asciiz	"\nTermina el programa\n"
str_elijeMat:	.asciiz	"\nElije la matriz de trabajo (1..6): "
str_numMatMal:	.asciiz	"Numero de matriz de trabajo incorrecto\n"
str_errorFil:	.asciiz	"Error: dimension incorrecta.  Numero de fila incorrecto\n"
str_errorCol:	.asciiz	"Error: dimension incorrecta.  Numero de columna incorrecto\n"
str_indFila:	.asciiz	"\nIndice de fila: "
str_indCol:	.asciiz	"Indice de columna: "
str_nuevoValor:	.asciiz	"Nuevo valor para el elemento: "
str_valMin:	.asciiz	"\nEl valor minimo esta en ("
str_conValor:	.asciiz	") con valor "

str_matTiene:	.asciiz	"\n\nLa matriz tiene dimension "

	.text

# subrutinas

# Subrutina PRINT MAT
# $s0 = dirección de inicio de la matriz
# $s1 = número de filas
# $s2 = número de columnas
# $s3 = dirección de la matriz

print_mat:
	# Función para imprimir una matriz por consola
	addi $sp, $sp, -32
	sw 		$s0, 0($sp)  # Primer elemento de la matriz
	sw 		$s1, 4($sp)  # Número de filas
	sw 		$s2, 8($sp)  # Número de columnas
	sw 		$s3, 12($sp) # Dirreción de la matriz
	sw 		$s4, 16($sp) # Tamaño de la matriz
	sw 		$s5, 20($sp) # Índice de filas 
	sw 		$s6, 24($sp) # Índice de columnas 
	sw 		$ra, 28($sp)

	move $s3, $a1
	la 		$s0, 8($s3) # Primer elemento de la matriz
	lw 		$s1, 0($s3) # Número de filas
	lw 		$s2, 4($s3) # Número de columnas

	# std::cout << "\n\nLa matriz tiene dimension " << nFil << 'x' << nCol << '\n';
	# std::cout << "\n\nLa matriz tiene dimension "
	li 		$v0, 4
	la 		$a0, str_matTiene
	syscall
	# << nFil
	move 	$a0, $s1
	li 		$v0, 1
	syscall
	# << "x"
	li 		$a0, 120
	li 		$v0, 11
	syscall
	# << nCol
	move 	$a0, $s2
	li 		$v0, 1
	syscall
	# << '|n'
	li 		$a0, 10
	li 		$v0, 11
	syscall

	mul 	$s4, $s1, $s2 # Tamaño de la matriz
	beqz 	$s4, next_instruction
	move 	$s5, $zero # Se inicializa el índice de filas a 0
	move 	$s6, $zero # Se inicializa el índice de columnas a 0

# for(int f = 0; f < nFil; f++) {
for_print_mat:
	l.s 	$f4, 0($s0) # Cargo en f4 el flotante que se encuentra en $s0
	
	# std::cout << elem[f*nCol + c] << ' ';
	li 		$v0, 2
	mov.s 	$f12, $f4
	syscall

	li 		$v0, 11
	li 		$a0, 32
	syscall


	addi  	$s0, $s0, sizeF
	addi 	$s5, $s5, 1 # Se añade 1 al índice de filas
	addi 	$s6, $s6, 1 # Se añade 1 al índice de columnas
	bne		$s6, $s2, print_line_jump
	move  	$s6, $zero # Se inicializa el índice de columnas a 0
	
	# std::cout << '\n';
	li		$v0, 11
	li 		$a0, 10
	syscall

print_line_jump:

	blt 	$s5, $s4, for_print_mat # Si el índice de filas no ha llegado al número total de elementos de la matriz salta al for
	
	# std::cout << '\n';
	li 		$v0, 11
	li 		$a0, 10
	syscall

next_instruction:

	lw 		$s0, 0($sp)
	lw		$s1, 4($sp)
	lw		$s2, 8($sp)
	lw		$s3, 12($sp)
	lw		$s4, 16($sp)
	lw		$s5, 20($sp)
	lw		$s6, 24($sp)
	lw		$ra, 28($sp)
	addi	$sp, $sp, 32
	jr 		$ra

print_mat_fin:

# subrutina CHANGE ELEMENT 

# $a1 = Dirección de la matriz
# $a2 = Filas del elemento
# $a3 = Columnas del elemento
# $f2 = Flotante

change_elto:

	la 		$t0, 8($a1) # Se carga en $t0 el primer elemento de la matriz
	lw 		$t1, 4($a1) # Numero de columnas

	mul 	$t2, $a2, $t1 # [indF * numCOl
	addu	$t2, $t2, $a3 # [indF * numCol + indC]
	mul 	$t2, $t2, sizeF # Se le multiplica el tamaño del flotante ($t2 * 4)
	addu 	$t2, $t2, $t0 # Se carga la dirección en $t2

	s.s 	$f12, 0($t2) # Almaceno la dirección del flotante seleccionado
	jr		$ra

change_elto_fin:

# subrutina SWAP
# $a0 Se almacena la dirección del primer elemento
# $a3 Se almacena la dirección del segundo elemento

swap:

	l.s 	$f4, 0($a0) # float temp1 = *e1;
	l.s 	$f5, 0($a3) # float temp2 = *e2;
	s.s 	$f5, 0($a0) # *e1 = temp2;
	s.s 	$f4. 0($a3) # *e2 = temp1;
	jr 		$ra

swap_fin:

#subrutina INTERCAMBIA
# $a1 Almacena la dirección de la matriz
# $a2 ALmacena las filas del elmento
# $a3 Almacena las filas del elmento

intercambia:

	la 		$t0, 8($a1) # Se carga en $t0 el primer elemento de la matriz
	lw		$t1, 4($a1) # Se carga en $t1 el número de columnas
	lw 		$t2, 0($a1) # Se carga en $t2 el número de filas
	#float* e1 = &datos[indF * numCol + indC];
	mul 	$t5, $a2, $t1 # [indF * numCol
	addu 	$t5, $t5, $a3 # [indF * numCol + indC]
	mul 	$t5, $t5, sizeF # Se le multiplica el tamaño del flotante (4)
	addu 	$t3, $t0, $t5 # Almacena la nueva dirección
	move 	$a0, $t3
	
	#float* e2 = &datos[(numFil - indF - 1) * numCol + (numCol - indC - 1)];
	sub $t8, $t1, $a2 # numFil - indF
	li $t7, 1
	sub $t8, $t8, $t7 # [(numFil - indF - 1)
	mul $t8, $t8, $t2 # [(numFil - indF - 1) * numCol
	sub $t4, $t2, $a3 # (numCol - indC
	sub $t4, $t4, $t7 # (numCol - indC - 1)]
	addu $t8, $t8, $t4 # [(numFil - indF - 1) * numCol + (numCol - indC - 1)]
	mul $t8, $t8, sizeF # Se multiplica por el tamaño del flotante (4)
	addu $t8, $t8, $t0 # Se almacena la dirección
	move $a3, $t8
	
	# Pila para almacenar la dirección
	addi $sp, $sp, -4 
	sw $ra, 0($sp)

	# Vuelvo a llamar a la función
	jal swap 

	# Recupero la dirección almacenada en la pila
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	jr $ra

intercambia_fin: