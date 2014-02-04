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
                <asp:TextBox runat="server" ID="StartTemp" />
                <asp:Label Text="Sluttemperatur" runat="server" />
                <asp:TextBox runat="server" ID="StopTemp" />
                <asp:Label Text="Temperatursteg" runat="server" />
                <asp:TextBox runat="server" ID="TempStep" />
                <asp:Label Text="Typ av konvertering" runat="server" />
                <asp:RadioButton GroupName="CToF" runat="server" ID="Celsius" Checked="True"/>
                <asp:Label Text="Celsius to fahrenheit" runat="server" />
                <asp:RadioButton GroupName="CToF" runat="server" ID="Fahrenheit"/>
                <asp:Label Text="Fahrenheit to Celsius" runat="server" />
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
