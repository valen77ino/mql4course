//+------------------------------------------------------------------+
//|                                                         Cap4.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

#property script_show_inputs
// extern es como input pero permite cambiar el valor
extern int operador1 = 10; 
input int operador2 = 2;
//input int operacion = 0;
enum tipoOperacion {
   suma,
   resta,
   multiplicacion,
   division,
   aumentar,
   disminuir,
   resto,
   multiplicarPorSiMismo
}; // tras el enum hay que poner ;
input tipoOperacion operacion = 0;

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart() {
   float resultado = 0; // Con double no sae
   switch (operacion) {
      case 0:
         resultado = operador1 + operador2;
         Comment(operador1, " + ", operador2, " = ", resultado);
         break;
      case 1:
         resultado = operador1 - operador2;
         Comment(operador1, " - ", operador2, " = ", resultado);
         break;
      case 2:
         resultado = operador1 * operador2;
         Comment(operador1, " * ", operador2, " = ", resultado);
         break;
      case 3:
         resultado = operador1 / operador2;
         Comment(operador1, " / ", operador2, " = ", resultado);
         break;
      case 4:
         //operador1 = operador1 + 1;
         Comment("Aumentar operador1 en 1: ", operador1++);
         break;
      case 5:
         operador1 = operador1 - 1;
         Comment("Disminuir operador1 en 1: ", operador1);
         break;
      case 6:
         resultado = operador1 % operador2;
         Comment("Resto de ", operador1, " entre ", operador2, " es ", resultado);
         break;
      case 7:
         Comment("Multiplicar operador1 por si mismo es: ", operador1*=operador1);
         break;
       default:
         Comment("Opción ", operacion, " NO válida");
   }
   
  }
//+------------------------------------------------------------------+
