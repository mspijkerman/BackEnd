﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Value="1">Laat formulier zien</asp:ListItem>
            <asp:ListItem Value="2" Selected="True">Verberg formulier</asp:ListItem>
        </asp:RadioButtonList>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <h1>Wie ben je?</h1>
        <p>Vul de onderstaande vragen in:</p>
        <table class="auto-style1">
            <tr>
                <td>Naam</td>
                <td>
                    <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Geslacht</td>
                <td>
                    <asp:RadioButtonList ID="rbGeslacht" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="M">Man</asp:ListItem>
                        <asp:ListItem Value="V">Vrouw</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Hobby</td>
                <td>
                    <asp:CheckBoxList ID="chkHobby" runat="server">
                        <asp:ListItem Value="1">Gamen</asp:ListItem>
                        <asp:ListItem Value="2">Programmeren</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Opleiding</td>
                <td>
                    <asp:DropDownList ID="cbOpleiding" runat="server">
                        <asp:ListItem Value="1">VMBO</asp:ListItem>
                        <asp:ListItem Value="2">HAVO</asp:ListItem>
                        <asp:ListItem Value="3">VWO</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnMaakKaart" runat="server" Text="Verzenden" OnClick="btnMaakKaart_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Label ID="lbl1" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lbl2" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lbl3" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lbl4" runat="server"></asp:Label>
    </form>
</body>
</html>
