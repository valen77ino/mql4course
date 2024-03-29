//+------------------------------------------------------------------+
//|                                                         Cap5.mq4 |
//|                                         Valentin Carrera Calzada |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Valentin Carrera Calzada"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property script_show_inputs

// Este script mostrará todas las propiedades del par de valores.
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   double propiedad = 0;
   string comentario="";
//---
// Generar bucle para rotar entre las propiedades
   for(char opcion=1;opcion<=33;opcion++)
     {
      propiedad = MarketInfo(NULL, opcion);
      comentario+=StringSubstr(EnumToString(ENUM_MARKETINFO(opcion)),5,0)+" = "+DoubleToStr(propiedad,MarketInfo(NULL,12))+"\n";
      // Imprimir en comment los resultados obtenidos
     }
      Comment(comentario);
  }
//+------------------------------------------------------------------+
