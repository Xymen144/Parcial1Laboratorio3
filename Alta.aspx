<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta.aspx.cs" Inherits="Parcial1Laboratorio3.Alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar</title>
    <link href="estilos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Registro de Productos </h1>
            <p> Ingrese el Nombre del Producto:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p> Ingrese el Precio del Producto:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p> Seleccione la Categoria del Producto:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCategorias" DataTextField="descripcion" DataValueField="idCategoria" Height="23px" Width="146px">
                </asp:DropDownList>
            </p>
            <p> 
                <asp:Button ID="Button1" runat="server" Text="REGISTRAR" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaInicio.aspx">Volver a Inicio</asp:HyperLink>
        <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:LP3Parcial1ConnectionString %>" ProviderName="<%$ ConnectionStrings:LP3Parcial1ConnectionString.ProviderName %>" SelectCommand="SELECT [descripcion], [idCategoria] FROM [categorias]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceAlta" runat="server" ConnectionString="<%$ ConnectionStrings:LP3Parcial1ConnectionString %>" SelectCommand="SELECT * FROM [categorias]" InsertCommand="INSERT INTO productos( nombre, precio, idCategoria) VALUES (@nombre,@precio,@idCategoria)">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="precio" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="idCategoria" PropertyName="SelectedValue" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
