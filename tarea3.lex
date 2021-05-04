/*
Fernando Rodríguez Robles - A01328720

Tarea 3.

La entrada a su reconocedor debe ser un archivo de texto cuyo nombre debe ser leído como parte del comando de llamada al reconocedor en la consola. La salida debe ser un mensaje de aceptación si no hay errores de sintaxis o un mensaje de error de sintaxis en caso de encontrar alguno. El mensaje de error debe, al menos, decir el número de línea donde el error está.

Para compilar es necesario usar los siguientes comandos:

    flex tarea3.lex
    gcc lex.yy.c -lfl
    ./a.out prueba1.txt
    ./a.out prueba2.txt
    ./a.out prueba3.txt
    ./a.out prueba4.txt
    ./a.out prueba5.txt
    ./a.out prueba6.txt
    ./a.out prueba7.txt
*/

%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/* Definimos algunas constantes para identificar fichas */

#define NUM      1
#define ID       2
#define BEG      3
#define END      4
#define IF       5
#define ELSE     6
#define WHILE    7
#define SIM      8
#define SUMA     9
#define RESTA   10
#define MULT    11
#define DIV     12
#define PARENI  13
#define PAREND  14
#define IGUAL   15
#define ASIGN   16
#define MENOR   17
#define MAYOR   18
#define MENORIG 19
#define MAYORIG 20

int yylval;
int linea = 1;
%}

LETRA [A-Za-z]
IDENTIFICADOR [_|$|A-Za-z][a-zA-Z0-9|_|$]*
DIGITO [1-9][0-9]*
%%

{DIGITO} {yylval = atoi(yytext); return DIGITO;}
"begin" {return BEG; }

}