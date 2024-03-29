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
/*
Mejoras a realizar en este script:
1) Que todos los datos muestren en número de dígitos adecuados.
** Precios ocupe los dígitos
** Unidades 2 dígitos nada más
** Margen, etc. 2 dígitos
2) Usar en otro script lo que hemos programdo aquí para hacer una calculadora.

Uso de los concidionales if
*/

// Este script mostrará todas las propiedades del par de valores.
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart() {
   AboutSymbol();
}
//+------------------------------------------------------------------+

void AboutSymbol() {
   double propiedad = 0;
   string comentario="";
//---
// Generar bucle para rotar entre las propiedades
   for(char opcion=11;opcion<34;opcion++)
     {
      propiedad = MarketInfo(NULL, opcion); // El valor numérico a mostrar
      if (opcion==13 || opcion==26 || opcion==27 || opcion==28) propiedad=propiedad/10;
      string modo=StringSubstr(EnumToString(ENUM_MARKETINFO(opcion)),5,0);
      char digitos=MarketInfo(NULL,12); // Cuantos díginos maneja el par
      if (opcion==12 || opcion==15) digitos=0; // Cambio a 0 los dígitos imprimibles
      if (opcion==13 || opcion==16 || opcion==18 || opcion==19 || opcion==22 || opcion==23 || opcion==24 || opcion==25 || opcion==26 || opcion==29 || opcion==30 || opcion==31 || opcion==32) digitos=2; // Cambio a 2 los dígitos imprimibles
      string cantidad; // El dato numérico que se debe imprimir en cada renglón.
      cantidad=DoubleToString(propiedad,digitos);
      //cantidad=CambiaATexto(propiedad,digitos);
      if ((opcion==20 || opcion==21) && propiedad>0) cantidad=TimeToString(propiedad,TIME_DATE); // Cambio a 0 los dígitos imprimibles
      if (propiedad==0) cantidad = "N/A";
      if (opcion==22) cantidad=(propiedad>0)?"true":"false";
      if (opcion==26)
      {
         int op=propiedad;
         switch(op)
         {
            case 0: cantidad="points";break;
            case 1: cantidad="in base currency";break;
            case 2: cantidad="by interest";break;
            case 3: cantidad="margin currency";break;
         }
      }
      if (opcion==27)
      {
         int op=propiedad;
         switch(op)
         {
            case 0: cantidad="Forex";break;
            case 1: cantidad="CFD";break;
            case 2: cantidad="Futures";break;
         }
      }
      if (opcion==28)
      {
         int op=propiedad;
         switch(op)
         {
            case 0: cantidad="Forex";break;
            case 1: cantidad="Futures";break;
            case 2: cantidad="CFD";break;
            case 3: cantidad="Ind. CFD";break;
         }
      }
//      {
//         if(propiedad==1) cantidad="true";
//         if(propiedad==0) cantidad="false";
//      }
      comentario=comentario+(modo+" = "+cantidad+"\n");
      // Imprimir en comment los resultados obtenidos
     }
      Comment(comentario);
}