<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contacto.aspx.cs" Inherits="Contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 256px;
            width: 882px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label ID="lblResultado" runat="server" Text="Label"></asp:Label>
    </div>
        <p>
        <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" Height="58px" style="margin-left: 283px; margin-top: 98px" Width="303px" />
        </p>
    </form>
</body>
</html>
