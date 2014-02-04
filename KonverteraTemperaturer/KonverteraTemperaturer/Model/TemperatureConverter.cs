using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KonverteraTemperaturer.Model
{
    public class TemperatureConverter
    {
        public int CelsiusToFahrenheit(int degreesC) 
        {
            return Convert.ToInt32((degreesC * 1.8) + 32);
        }
        public int FahrenheitToCelsius(int degreesF)
        {
            return Convert.ToInt32((degreesF - 32) / 1.8);
        }
    }
}