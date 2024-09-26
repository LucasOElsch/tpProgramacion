#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main()
{
    int array[40][4];
    char nombres[40][30];
    int i, j, op, legajo, nro, sueldo, contadorDatos = 0, cambiarCategoria;

    do
    {
        printf("1. Cargar empleados\n2. Mostrar empleados\n3. Mostrar el sueldo de un empleado\n4. Modificar la cateogira de un emempleado.\n5. Salir\n");

        scanf("%d", &op);

        switch (op)
        {
        case 1:
            for (i = 0; i < 40; i++)
            {
                printf("EMPLEADO %d\n", i + 1);
                for (j = 0; j < 4; j++)
                {
                    switch (j)
                    {
                    case 0:
                        do
                        {
                            printf("LEGAJO: ");
                            scanf("%d", &array[i][j]);
                            if (array[i][j] < 10000 || array[i][j] > 99999)
                            {
                                printf("El Numero de legajo debe ser mayor a 9.999 y menor a 99.999\n");
                            }
                        } while (array[i][j] < 10000 || array[i][j] > 99999);
                        break;

                    case 1:
                        printf("NOMBRE: ");
                        scanf("%s", &nombres[i]);
                        break;

                    case 2:

                        printf("HORAS TRABAJADAS: ");
                        scanf("%d", &array[i][j]);
                        break;
                    case 3:
                        do
                        {
                            printf("CATEGORIA: ");
                            scanf("%d", &array[i][j]);
                            if (array[i][j] <= 0 || array[i][j] > 3)
                            {
                                printf("Valor no valido. Las categorias deben ser 1, 2 o 3\n");
                            }

                        } while (array[i][j] <= 0 || array[i][j] > 3);
                        contadorDatos++;
                        break;
                    }
                }
                printf("Queres dejar de cargar? ( Ingrese 0 Para salir) ");
                scanf("%d", &nro);
                if (nro == 0)
                {
                    break;
                }
            }

            break;

        case 2:
            printf("Mostrar empleados\n");

            for (i = 0; i < contadorDatos; i++)
                printf("Empleado %d: Legajo: %d, Nombre: %s, Horas Trabajadas: %d, Categoria: %d\n",
                       i + 1, array[i][0], nombres[i], array[i][2], array[i][3]);

            break;

        case 3:
            printf("Mostrar sueldo\n");
            for (i = 0; i < contadorDatos; i++)
            {

                if (array[i][3] == 1)
                {
                    sueldo = array[i][2] * 2000;
                }
                else if (array[i][3] == 2)
                {
                    sueldo = array[i][2] * 1500;
                }
                else if (array[i][3] == 3)
                {
                    sueldo = array[i][2] * 1000;
                }

                printf("Empleado %d: Legajo: %d, Nombre: %s, Sueldo: %d\n",
                       i + 1, array[i][0], nombres[i], sueldo);
                sueldo = 0;
            }
            break;
        case 4:
            printf("Ingrese el numero de legajo del empleado al que se le quiere cambiar la categoria\n");
            scanf("%d", &legajo);
            for (i = 0; i < contadorDatos; i++)
            {
                if (legajo == array[i][0])
                {
                    printf("Legajo encontrado\n Empleado: %s\n Categoria actual: %d\n", nombres[i], array[i][3]);
                    do
                    {
                        printf("Ingrese la categoria nueva: ");
                        scanf("%d", &cambiarCategoria);
                    } while (cambiarCategoria > 3 || cambiarCategoria <= 0);
                    printf("Cambio de categoria exitoso");
                    array[i][3] = cambiarCategoria;
                }
                else
                {
                    printf("Legajo no encontrado\n");
                }
            }
            break;
        case 5:
            break;
        default:
            printf("Ingresaste un numero incorrecto\n");
            break;
        }

    } while (op != 5);

    return 0;
}