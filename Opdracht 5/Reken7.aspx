<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reken7.aspx.cs" Inherits="Rekken" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblGetal1" runat="server" Text="Getal 1"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtGetal1" runat="server"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="rfvGetal1" runat="server" ControlToValidate="txtGetal1" ErrorMessage="Vul getal 1 in!" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvGetal1" runat="server" ControlToValidate="txtGetal1" ErrorMessage="Tussen de 1 en 100" MaximumValue="100" Display="Dynamic" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnOptel" runat="server" OnClick="btnOptel_Click" Text="Optellen" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblGetal2" runat="server" Text="Getal 2"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtGetal2" runat="server" Height="22px"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="rfvGetal2" runat="server" ControlToValidate="txtGetal2" ErrorMessage="Vul getal 2 in!" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtGetal1" ControlToValidate="txtGetal2" ErrorMessage="Getal 1 en 2 moeten overeenkomen!" Display="Dynamic"></asp:CompareValidator>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="btnAftrek" runat="server" OnClick="btnAftrek_Click" Text="Aftrekken" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblUitkomst" runat="server" Text="Uitkomst"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtUitkomst" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>

                    &nbsp;</td>
                <td class="auto-style13">

                    &nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td>

                    Telefoon</td>
                <td class="auto-style13">

                    <asp:TextBox ID="txtTelefoon" runat="server" Height="23px" Width="158px"></asp:TextBox>

                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelefoon" Display="Dynamic" ErrorMessage="Vul een geldig telefoon nummer in met dit formaat: &quot;123 1234567&quot;" ValidationExpression="((\d{3}) (\d{7}))"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
