<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baja.aspx.cs" Inherits="Parcial1Laboratorio3.Baja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Eliminat</title>
    <link href="estilos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Eliminación de Productos</h1>
            <p>Ingrese id del Producto:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Eliminar" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaInicio.aspx">Volver al Inicio</asp:HyperLink>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LP3Parcial1ConnectionString %>" DeleteCommand="DELETE FROM productos WHERE (idProducto = @idProducto)" SelectCommand="SELECT * FROM [productos]">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
