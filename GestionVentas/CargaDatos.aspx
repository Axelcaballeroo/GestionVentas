<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargaDatos.aspx.cs" Inherits="GestionVentas.CargaDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold">
            CARGA DE DATOS<br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Volver al Menú</asp:HyperLink>
            <br />
            <br />
            FECHA:&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            VENDEDOR:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            DETALLE VENTA:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            MONTO:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CARGAR DATOS" />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
