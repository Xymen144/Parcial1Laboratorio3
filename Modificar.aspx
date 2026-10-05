<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="Parcial1Laboratorio3.Modificar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar</title>
    <link href="estilos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Modificación de Productos </h1>
            <p> Ingrese id del Producto:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p> 
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
            <p> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LP3Parcial1ConnectionString %>" SelectCommand="SELECT * FROM productos WHERE idProducto=@idProducto" UpdateCommand="UPDATE productos SET nombre = @nombre, precio = @precio, idCategoria = @idCategoria WHERE idProducto = @idProducto">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="nombre" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox3" Name="precio" PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="idCategoria" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
              <p> Ingrese el Nombre del Producto:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  </p>
  <p> Ingrese el Precio del Producto:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
  </p>
  <p> Seleccione la Categoria del Producto:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCategorias" DataTextField="descripcion" DataValueField="idCategoria" Height="23px" Width="146px">
      </asp:DropDownList>
  </p>
  <p> 
            <p> 
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Modificar" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>

        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaInicio.aspx">Volver al Inicio</asp:HyperLink>
        <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:LP3Parcial1ConnectionString %>" SelectCommand="SELECT idCategoria, descripcion FROM categorias"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
