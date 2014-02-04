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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None" ControlToValidate="StartTemp" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="StopTemp" Display="None" ErrorMessage="CompareValidator" ControlToValidate="StartTemp" Operator="LessThan" Type="Integer"></asp:CompareValidator>
                </div>
                <div><asp:Label Text="Sluttemperatur" runat="server" />
                <asp:TextBox runat="server" ID="StopTemp" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" ControlToValidate="StopTemp" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" Display="None" ErrorMessage="CompareValidator" ControlToValidate="StopTemp" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </div>
                <div><asp:Label Text="Temperatursteg" runat="server" />
                <asp:TextBox runat="server" ID="TempStep" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None" ErrorMessage="RequiredFieldValidator" ControlToValidate="TempStep"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TempStep" Display="None" ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </div>
                <div><asp:Label Text="Typ av konvertering" runat="server" /></div>
                <div><asp:RadioButton GroupName="CToF" runat="server" ID="Celsius" Checked="True"/>
                <asp:Label Text="Celsius to fahrenheit" runat="server" /></div>
                <div><asp:RadioButton GroupName="CToF" runat="server" ID="Fahrenheit"/>
                <asp:Label Text="Fahrenheit to Celsius" runat="server" /></div>
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
