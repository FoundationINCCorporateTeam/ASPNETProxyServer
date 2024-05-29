<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPNetProxyServer.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Interstellar Proxy Client</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Interstellar Proxy Client</h1>
            <asp:TextBox ID="UrlTextBox" runat="server" Width="300px" Placeholder="Enter URL"></asp:TextBox>
            <asp:Button ID="FetchButton" runat="server" Text="Fetch" OnClick="FetchButton_Click" />
            <br /><br />
            <asp:Literal ID="ResponseLiteral" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
