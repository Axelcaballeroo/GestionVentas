<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarVentas.aspx.cs" Inherits="GestionVentas.ConsultarVentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: x-large; font-weight: bold">
            CONSULTA DE VENTAS<br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Volver al Menú</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Medium"></asp:Label>
        </div>
    </form>
</body>
</html>
