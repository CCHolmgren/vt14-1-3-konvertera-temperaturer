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
                int start;
                int stop;

                if (Celsius.Checked)
                {
                    start = TemperatureConverter.CelsiusToFahrenheit(int.Parse(StartTemp.Text));
                    stop = TemperatureConverter.CelsiusToFahrenheit(int.Parse(StopTemp.Text));
                }
                else
                {
                    start = TemperatureConverter.FahrenheitToCelsius(int.Parse(StartTemp.Text));
                    stop = TemperatureConverter.FahrenheitToCelsius(int.Parse(StopTemp.Text));
                }

                for (int i = 0; i < 10; i++)
                {
                    TableRow tr = new TableRow();
                    for (int j = 0; j < 2; j++)
                    {
                        TableCell tc = new TableCell();
                        tc.Text = (j+5).ToString();
                        tr.Cells.Add(tc);
                    }
                    Table1.Rows.Add(tr);
                }
                Table1.Visible = true;
            }
        }
    }
}