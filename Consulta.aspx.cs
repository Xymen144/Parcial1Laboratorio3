using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1Laboratorio3
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal precio = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "precio"));
                if (precio > 50000)
                {
                    e.Row.ForeColor = System.Drawing.Color.Red;
                    e.Row.BackColor = System.Drawing.Color.AliceBlue;
                    e.Row.Font.Bold = true;
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.Label1.Text = "Producto seleccionado: " + this.GridView1.SelectedRow.Cells[2].Text;
        }
    }
}