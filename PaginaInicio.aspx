<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaInicio.aspx.cs" Inherits="Parcial1Laboratorio3.PaginaInicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Pagina de Inicio  </title>
    <link href="estilos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Bienvenidos a NuestraTienda Online </h1>
            <h2> Gestión de Productos</h2>

        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Alta.aspx">Registrar un Producto</asp:HyperLink>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Consulta.aspx">Consulta de Productos</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Modificar.aspx">Modificar un Producto</asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Baja.aspx">Eliminar un Producto</asp:HyperLink>
    </form>
</body>
</html>
