using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KonverteraTemperaturer
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConvertButton_Click(object sender, EventArgs e)
        {
            TableRow tr = new TableRow();
            TableCell tc = new TableCell();
            tc.Text = "5";
            tr.Cells.Add(tc);
            Table1.Rows.Add(tr);
            Table1.Visible = true;
        }
    }
}