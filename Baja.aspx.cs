using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1Laboratorio3
{
    public partial class Baja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int cant = SqlDataSource1.Delete();

            if (cant > 0)
                this.Label1.Text = "Se eliminó el producto";
            else
                this.Label1.Text = "No existe un producto con tal código";
        }
    }
}