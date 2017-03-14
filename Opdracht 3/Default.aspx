<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Selecteer een datum in de kalender</h1>
        <p>
            <asp:Calendar ID="kalVerjaardag" runat="server" OnSelectionChanged="kalVerjaardag_SelectionChanged"></asp:Calendar>
        </p>
        <asp:Panel ID="Panel1" Visible="False" runat="server">
            <p>U heeft de onderstaande datum geselecteerd:</p>
            <p>
                <asp:Label ID="lblDatum" runat="server" Text="lblDatum"></asp:Label>
            </p>
            <p>U bent nu</p>
            <p>
                <asp:Label ID="lblJaar" runat="server" Text="DatumJaar"></asp:Label>
            </p>
        </asp:Panel>
        <p>
            <asp:Button ID="btnLeeftijd" runat="server" OnClick="Button1_Click" Text="Laat Zien" />
        </p>
    </div>
    </form>
</body>
</html>
