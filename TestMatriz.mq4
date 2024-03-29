//+------------------------------------------------------------------+
//|                                                   TestMatriz.mq4 |
//|                                                 Valentín Carrera |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Valentín Carrera"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property show_inputs
input int num_elementos = 5;
int elementos[];
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
  ArrayResize(elementos,num_elementos);
//---
   for (int i=0; i<num_elementos; i++)
   {
      elementos[i] = MathRand();
   }
   for (int i=0; i<num_elementos; i++)
   {
      Print("Apertura=",Open[i]," Cierre=",Close[i]," Tiempo=",Time[i]);
   }
  }
//+------------------------------------------------------------------+
