using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1Laboratorio3
{
    public partial class Modificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int cant = SqlDataSource1.Update();

            if (cant > 0)
                Label1.Text = "Producto modificado";
            else
                Label1.Text = "No se pudo realizar la modificacion";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;

            datos = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                // Asignamos cada columna a su respectivo control según el orden del SELECT
                TextBox2.Text = datos["nombre"].ToString();     // O puedes usar datos[1].ToString()
                TextBox3.Text = datos["precio"].ToString();     // O puedes usar datos[2].ToString()
                DropDownList1.SelectedValue = datos["idCategoria"].ToString(); // O datos[3].ToString()
            }
            else
            {
                this.Label1.Text = "No se encuentra un producto con tal ID";
            }
        }
    }
}