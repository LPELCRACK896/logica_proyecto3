# Prolog
Proyecto que utiliza prolog para resolver una serie de ejercicios de derivadas que incluyen operaciones: 
- Exponenciales
- Trigonometricas (sen, cos, arctan)
- Polinomios
- Logaritmo natural
## Documentacion
### Sintaxis
- Utilizar lower case para nombrar los archivos y argumentos. 
- Para termina una linea utilizar el caracter punto '.'
### Instrucciones utiles en consola
- pwd. --> Indica el directorio sobre el que compilaría. 
- working_directory(CWD, 'C:/...'). --> Cambia el directorio al indicado en el string. 
- [nombre archivo].  --> Compila el archivo indicado.  
## Ejercicios
- derivada(ln(x/(x+1)), x, Y).
- derivada(sen(exp(3*x)), x, Y).
- derivada(ln(sen((x+1)/x)), x, Y).
- derivada((x^5+x^3)/(x^2+1), x, Y).
- derivada(arctan((x^2+1)^10), x, Y).