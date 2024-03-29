//+------------------------------------------------------------------+
//|                                                     Cap8.mq4.mq4 |
//|                                                 Valentín Carrera |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Valentín Carrera"
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property script_show_inputs
#include "..\\..\\Libraries\InfoSymbol.mq4"

input double valor1;
input double valor2;
//input int modoInicial=11;
//input int modoFinal=33;
input ENUM_MARKETINFO mode=11;
enum Func {
   Abs,
   Arccos,
   Arcsin,
   Arctan,
   Ceil,
   Cos,
   Exp,
   Floor,
   IsValidNumber,
   Log,
   Log10,
   Max,
   Min,
   Mod,
   Pow,
   Rand,
   Round,
   Sin,
   Sqrt,
   Srand,
   Swap,
   Tang
};
input Func funcion;

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//Invocamos la función desde la librería InfoSymbol.mq4
   //AboutSymbol(modoInicial, modoFinal);
   AboutSymbol(mode, mode);
   // Capturo los valores de comentario en comentario.
   string comentario = ChartGetString(0,CHART_COMMENT);
   Print("comentario: " + comentario);
   // Limpia los comentarios.
   //Comment("");
   
   // Extraer de la cadena de texto el valor numérico
   int posicionInteresante = StringFind(comentario," = ");
   string cifra = StringSubstr(comentario,posicionInteresante + 3);
   Print("cifra: [" + cifra + "]");
   double numeroAManipular = StringToDouble(cifra);
   if (valor1 != 0) {
      numeroAManipular = valor1;
   }  
   Print("Funcion seleccionada: " + funcion);
   Print("numeroAManipular: " + numeroAManipular);
   Comment(operacionMatematica(funcion,numeroAManipular,valor2));
  }
//+------------------------------------------------------------------+
string operacionMatematica (int funcion, double operador, double operador2){
   double resultado;
   switch(funcion) {
      case 0: resultado = MathAbs(operador);break;
      case 1: resultado = MathArccos(operador);break;
      case 2: resultado = MathArcsin(operador);break;
      case 3: resultado = MathArctan(operador);break;
      case 4: resultado = MathCeil(operador);break;
      case 5: resultado = MathCos(operador);break;
      case 6: resultado = MathExp(operador);break;
      case 7: resultado = MathFloor(operador);break;
      case 8: resultado = MathIsValidNumber(operador);break;
      case 9: resultado = MathLog(operador);break;
      case 10: resultado = MathLog10(operador);break;
      case 11: resultado = MathMax(operador,operador2);break;
      case 12: resultado = MathMin(operador,operador2);break;
      case 13: resultado = MathMod(operador,operador2);break;
      case 14: resultado = MathPow(operador,operador2);break;
      case 15: resultado = MathRand();break;
      case 16: resultado = MathSin(operador);break;
      case 17: resultado = MathSqrt(operador);break;
      //case 18: resultado = MathSrand((int)operador);break;
      case 19: resultado = MathSwap((ulong)operador);break;
      case 20: resultado = MathTan(operador);break;
   } 
   return DoubleToString(resultado,5);
}