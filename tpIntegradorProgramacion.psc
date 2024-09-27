//Integrantes: Laureano Juarez, Lucas Oelschlager, Jeremias Oliva
Algoritmo tpIntegradorProgramacion
	Definir i, j, op, legajo, nro, sueldo, contadorDatos, cambiarcategoria, array Como Entero
	Definir nombres Como Caracter
	Dimension array[40, 4]
	Dimension nombres[40]
	contadorDatos <- 0
	repetir 
		Escribir "1. Cargar empleados. 2. Mostrar empleados. 3.Mostrar el sueldo de un empleado. 4. Modificar la categoria de un empleado. 5. Salir"
		Leer op
		Segun op
			Opcion 1: 
				Para i <- 0 hasta 39
					Escribir "Empleado ", i + 1
					Para j <- 0 hasta 3
						segun j
								Opcion 0: 
								Repetir
									Escribir "Legajo: "
									Leer array[i, j]
									si array[i, j] < 10000 o array[i, j] > 99999
										Entonces
										Escribir "El numero de legajo debe ser mayor a 9.999 y menor a 99.999"
									FinSi
								Mientras Que array[i, j] < 10000 o array[i, j] > 99999
							opcion 1:
								Escribir "Nombre: "
								Leer nombres[i]
							Opcion 2:
								Repetir
									Escribir "Horas trabajadas: "
									Leer array[i, j]
									si array[i,j] < 0
										Entonces
										Escribir "Ingrese una hora valida"
									FinSi
								mientras Que array[i, j] < 0
							Opcion 3: 
								Repetir
									Escribir "Categoria: "
									Leer array[i, j]
									si array[i, j] <= 0 o array[i,j] > 3
										Entonces
										Escribir "Valor no valido. Las categorias deben ser 1, 2 o 3"
									FinSi 
								Mientras Que array[i,j] <= 0 o array[i, j] > 3
								contadorDatos <- contadorDatos + 1
								Escribir "QUIERE DEJAR DE CARGAR DATOS? (INGRESE 0 PARA SALIR. 1 Para seguir)"
								Leer nro
								si nro == 0
									Entonces
									i <- 40
								FinSi
 						FinSegun
					FinPara
				FinPara
			Opcion 2:
				Escribir "Mostrar Empleados "
				para i <- 0 hasta contadorDatos - 1 Hacer
					Escribir "Empleado ", i + 1, " Legajo ", array[i, 0], " Nombre ", nombres[i], " Horas trabajadas: ", array[i, 2], " Categoria: ", array[i, 3] 
				FinPara
			Opcion 3:
				Escribir "Mostrar sueldo "
				
				Para i <- 0 hasta contadorDatos - 1 Hacer
				si array[i, 3] == 1
						Entonces
						sueldo = array[i, 2] * 2000
					FinSi
					si array[i, 3] == 2
						Entonces
						sueldo = array[i, 2] * 1500
					FinSi
					si array[i, 3] == 3
						Entonces
						sueldo = array[i, 2] * 1000
					FinSi
					Escribir "Empleado ", i + 1, " Legajo: ", array[i, 0], " Nombre: ", nombres[i], " Sueldo: ", sueldo
					sueldo <- 0
				FinPara
			Opcion 4: 
				Escribir "Ingrese el numero de legajo del empleado al que se le quiere cambiar la categoria "
				Leer legajo
				Para i <- 0 hasta contadorDatos - 1 Hacer
					si legajo == array[i, 0]
						Entonces
						Escribir "Legajo encontrado. Empleado: ", nombres[i], " Categoria: ", array[i, 3]
						Repetir
							Escribir "Ingrese la categoria nueva: "
							leer cambiarcategoria
						Mientras Que cambiarcategoria > 3 o cambiarcategoria <= 0
						Escribir "Cambio de categoria exitoso "
						array[i, 3] <- cambiarcategoria
					SiNo
						Escribir "Legajo no encontrado "
					FinSi
				FinPara
			Opcion 5:
			De Otro Modo:
				Escribir "Ingresaste un numero Incorrecto"
		FinSegun
	Mientras Que op <> 5 
FinAlgoritmo
