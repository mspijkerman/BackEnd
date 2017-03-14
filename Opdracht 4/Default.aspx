<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 30%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 123px;
        }
        .auto-style4 {
            height: 26px;
            width: 123px;
        }
        body{
            background-color: darkgray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: darkred">Het Aftellen is begonnen</h1>
            <p>Het is vandaag:</p>
            <p>
                <asp:Literal ID="litVandaag" runat="server"></asp:Literal>
            </p>
            <p>Het is nu:</p>
            <p>
                <asp:Literal ID="litTijd" runat="server"></asp:Literal>
            </p>
            <h2>Wanneer is het pasen?</h2>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Het duurt nog</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblUren" runat="server" Text="xxxx"></asp:Label>
&nbsp;uren</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <asp:Label ID="lblMinuten" runat="server" Text="xxxx"></asp:Label>
&nbsp;minuten</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblSeconden" runat="server" Text="xxxx"></asp:Label>
&nbsp;seconden</td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnVervers" runat="server" OnClick="Button1_Click" Text="Verversen" />
        </div>
    </form>
</body>
</html>
