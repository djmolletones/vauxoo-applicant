"""
Modulo para obtener la sumatoria de una lista de números
Author: Danny J. Molletones
Date: 05/10/2016
"""


class CalculatorClass(object):
"""
Clase que define un método que permite obtenerla sumatoria de una lista de numeros
"""
    def sum(self, num_list):
        """
        Suma el contenido de la lista num_list que es recibida como
        parametro y muestra el resultado por pantalla
        """
        suma = 0
        for i in num_list:
                suma = suma + i
        print('La sumatoria es:' + str(suma))

lista = []
sumatoria = CalculatorClass()
cantidad_lista = int(input('Indique la cantidad de números a sumar: '))
for j in range(1, cantidad_lista+1):
        numero = int(input('indique el valor a sumar: '))
        lista.append(numero)
	
sumatoria.sum(lista)
