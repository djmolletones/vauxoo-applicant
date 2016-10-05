"""
Modulo para saber si un numero n es primo o no
Author: Danny J. Molletones
Date: 05/10/2016
"""


class PrimeClass(object):
    def is_prime(self, num_int):
        """
        Determina si un numero es considerado
        primo al ser divisible por si mismo
        """
        for cont in range(2, num_int):
            if (num_int % cont) == 0:
                return False
        return True

while True:
    resultado = PrimeClass()
    valor = int(input('Inserte valor a calcular: '))
    print resultado.is_prime(valor)
