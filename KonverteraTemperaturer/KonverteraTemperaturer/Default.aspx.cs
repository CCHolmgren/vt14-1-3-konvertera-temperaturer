using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KonverteraTemperaturer;
using KonverteraTemperaturer.Model;

namespace KonverteraTemperaturer
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConvertButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int step = int.Parse(TempStep.Text);
                int startC = int.Parse(StartTemp.Text);
                int stopC = int.Parse(StopTemp.Text);
                int startF = int.Parse(StartTemp.Text);
                int stopF = int.Parse(StopTemp.Text);
                int stepCount;

                if (Celsius.Checked)
                {
                    startF = TemperatureConverter.CelsiusToFahrenheit(int.Parse(StartTemp.Text));
                    stopF = TemperatureConverter.CelsiusToFahrenheit(int.Parse(StopTemp.Text));
                    double placeholder = (stopC-startC)/step;
                    stepCount = (int)Math.Round(placeholder);
                    stepCount += 1;
                }
                else
                {
                    startC = TemperatureConverter.FahrenheitToCelsius(int.Parse(StartTemp.Text));
                    stopC = TemperatureConverter.FahrenheitToCelsius(int.Parse(StopTemp.Text));
                    double placeholder = (stopF - startF) / (step*1.8);
                    stepCount = (int)Math.Round(placeholder);
                    stepCount += 1;
                }

                for (int i = 0; i < stepCount; i++)
                {
                    TableRow tr = new TableRow();
                    TableCell tc = new TableCell();
                    TableCell tf = new TableCell();
                    tc.Text = (startC + i * step).ToString();
                    tf.Text = (startF + i * step*1.8).ToString();
                    tr.Cells.Add(tc);
                    tr.Cells.Add(tf);
                    Table1.Rows.Add(tr);
                }
                Table1.Visible = true;
            }
        }
    }
}