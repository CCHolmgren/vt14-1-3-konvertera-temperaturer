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
                    stepCount = (stopC - startC) / step + 1;
                }
                else
                {
                    startC = TemperatureConverter.FahrenheitToCelsius(int.Parse(StartTemp.Text));
                    stopC = TemperatureConverter.FahrenheitToCelsius(int.Parse(StopTemp.Text));
                    stepCount = (stopF - startF) / step + 1;
                }

                //Assuming that we get correct steps, since the document doesn't say anything about it

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