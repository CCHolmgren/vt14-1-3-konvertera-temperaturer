<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KonverteraTemperaturer.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>
        <div>
            <div>
                <asp:Label Text="Starttemperatur" runat="server" />
                <asp:TextBox runat="server" />
                <asp:Label Text="Sluttemperatur" runat="server" />
                <asp:TextBox runat="server" />
                <asp:Label Text="Temperatursteg" runat="server" />
                <asp:TextBox runat="server" />
                <asp:Label Text="Typ av konvertering" runat="server" />
                <asp:RadioButtonList runat="server">
                    <asp:ListItem Text="Celsius till fahrenheit" />
                    <asp:ListItem Text="Fahrenheit till celsius" />
                </asp:RadioButtonList>
                <asp:Button Text="Konvertera" Name="ConvertButton" ID="ConvertButton" runat="server" OnClick="ConvertButton_Click" />
            </div>
            <div>

                <asp:Table ID="Table1" runat="server" Visible="False">
                </asp:Table>

            </div>
        </div>
    </form>
</body>
</html>
