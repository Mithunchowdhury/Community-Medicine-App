<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllHistoryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.ShowAllHistoryUI" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show All History</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="National Id"></asp:Label>
        <asp:TextBox ID="nationalIdTextBox" runat="server"></asp:TextBox> &nbsp;
        <asp:Button ID="showButton" runat="server" Text="Show" OnClick="showButton_Click" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="addressTextBox" runat="server"></asp:TextBox><br />
        <asp:Label ID="megLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
