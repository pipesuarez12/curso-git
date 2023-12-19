def es_primo(numero):
    if numero < 2:
        return False
    for i in range(2, int(numero**0.5) + 1):
        if numero % i == 0:
            return False
    return True

def par_o_impar(numero):
    if numero % 2 == 0:
        return "par"
    else:
        return "impar"

def analizar_numero(numero):
    if es_primo(numero):
        mensaje_primo = f"{numero} es un número primo."
    else:
        mensaje_primo = f"{numero} no es un número primo."

    mensaje_par_impar = f"{numero} es un número {par_o_impar(numero)}."

    return mensaje_primo, mensaje_par_impar

def main():
    try:
        # Solicitar al usuario que ingrese un número
        numero = int(input("Ingrese un número entero: "))

        # Analizar el número e imprimir los resultados
        mensaje_primo, mensaje_par_impar = analizar_numero(numero)
        print(mensaje_primo)
        print(mensaje_par_impar)

    except ValueError:
        print("Por favor, ingrese un número entero válido.")

if __name__ == "__main__":
    main()
