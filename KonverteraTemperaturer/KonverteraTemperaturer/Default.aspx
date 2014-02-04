<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KonverteraTemperaturer.Default" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Temperatur konvertering</title>
        <link href="Main.css" rel="stylesheet" />
    </head>

    <body>
        <h1>Konvertera temperaturer</h1>
        <div class="formcontainer">
            <form id="form1" runat="server">
                <ol class="ol">
                    <li>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </li>
                    <li>
                        <asp:Label Text="Starttemperatur" runat="server" />
                    </li>
                    <li>
                        <asp:TextBox runat="server" ID="StartTemp" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="StartTemp" ErrorMessage="Fyll i en starttemperatur">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="StopTemp" Display="None" ErrorMessage="Värdet är inte mindre än sluttemperaturen" ControlToValidate="StartTemp" Operator="LessThan" Type="Integer">*</asp:CompareValidator>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="StartTemp" Display="None" ErrorMessage="Värdet är inte ett heltal" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                    </li>
                    <li>
                        <asp:Label Text="Sluttemperatur" runat="server" />
                    </li>
                    <li>
                        <asp:TextBox runat="server" ID="StopTemp" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="StopTemp" ErrorMessage="Fyll i en sluttemperatur">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" Display="None" ErrorMessage="Fyll i ett heltal" ControlToValidate="StopTemp" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                    </li>
                    <li>
                        <asp:Label Text="Temperatursteg" runat="server" />
                    </li>
                    <li>
                        <asp:TextBox runat="server" ID="TempStep" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Fyll i ett temperatursteg" ControlToValidate="TempStep">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TempStep" Display="None" ErrorMessage="Temperatursteget måste vara mellan 1 och 100." MaximumValue="100" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                    </li>
                    <li>
                        <asp:Label Text="Typ av konvertering" runat="server" />
                    </li>
                    <li>
                        <asp:RadioButton GroupName="CToF" runat="server" ID="Celsius" Checked="True" />
                        <asp:Label Text="Celsius to fahrenheit" runat="server" />
                    </li>
                    <li>
                        <asp:RadioButton GroupName="CToF" runat="server" ID="Fahrenheit" />
                        <asp:Label Text="Fahrenheit to Celsius" runat="server" />
                    </li>
                    <li>
                        <asp:Button Text="Konvertera" Name="ConvertButton" ID="ConvertButton" runat="server" OnClick="ConvertButton_Click" />
                    </li>
                </ol>
            </form>
        </div>
        <asp:Table ID="Table1" runat="server" Visible="False">
            <asp:TableHeaderRow CssClass="tableheader">
                <asp:TableHeaderCell>C</asp:TableHeaderCell>
                <asp:TableHeaderCell>F</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
    </body>

    </html>
