//+------------------------------------------------------------------+
//|                                                         Cap6.mq4 |
//|                                         Valentin Carrera Calzada |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Valentin Carrera Calzada"
#property link      "https://www.youtube.com/watch?v=kH1sLE1F9Ic&index=6&list=PLcN5crPuenD9ZzbQTpgs2Yg3oqHNgvJFv"
#property version   "1.00"
#property strict
#property script_show_inputs

input int repeticiones = 23;
int contador = 0;

// Este script mostrará todas las propiedades del par de valores.
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   string comentario = "";
   contador = 1;
//---
// Generar bucle para rotar entre las propiedades
   while(contador < repeticiones)
     {
      comentario = comentario + " " + contador;
      Comment(comentario);
      Print("Hola:" + comentario);
      contador++;
     }
  }
//+------------------------------------------------------------------+
