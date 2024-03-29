//+------------------------------------------------------------------+
//|                                                         Test.mq4 |
//|                        Copyright 2019, Valentín Carrera. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, Valentín Carrera."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

#property description "Esto es un script de prueba"

#property script_show_inputs // Abre una ventana para introducir los inputs
input string cometario = "Pon algo aquí..."; // Valor por defecto del input
input int entero; // 32 bits
input uint enteroSinSigno;
input double importeTotal; // 15 dígitos significativos
input float precio; // 7 dígitos significativos
input color colorFavorito = clrRed; // Color Favorito
input datetime momentoActual;
input long enteroGrande; // 64 bits
input ulong enteroMasGrande; // 64 bits sin signo
input bool quieroComentar = true; // Pueden ser 0 o 1
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   string saludo = "Hola Don Pepito";
   uchar caracter = 'a'; // byte. numérico sin signo.
   char enteroPequeno = 111; // Con signo. -128 a 127.
   // short. entre char y int. 16 bits.
   short enteroMediano;
   ushort enteroMedianoSinSigno;
   
   //colorFavorito = clrAliceBlue; // No se puede sobreescribir un input
//---
   //Comment("Hola Mundo");
   //Comment(saludo);
   //Alert("Cuidadín"+saludo);
   Comment(cometario, "\n\r", saludo); // Permite varias líneas en el comentario
  }
//+------------------------------------------------------------------+
