<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="CenterLoginUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.CenterLoginUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LogIn Your Center
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <div id="menu_items">
     <ul id="menu">
            <li><a href="Home.aspx">Home</a></li>
            <li><a href="DiseaseEntryUI.aspx">Disease Entry</a></li>
            <li><a href="MedicineEntryUI.aspx">Medicine Entry</a></li>
            <li><a href="CenterEntryUI.aspx">Create New Center</a></li>
            <li><a href="SendMedicineUI.aspx">Send Medicine</a></li>
              <li class="current"><a href="CenterLoginUI.aspx">LogIn Your Center</a></li>
          </ul>
        </div><!--close menu-->
</asp:Content>
<asp:Content ID="content4" ContentPlaceHolderID="ContentPlaceHolderContentItem" runat="server">
    <h1>Log In</h1> 
	      <p>This standards compliant, simple, fixed width website template is released as an 'open source' design (under the Creative Commons Attribution 3.0 Licence), which means that you are free to download and use it for anything you want (including modifying and amending it). If you wish to remove the &lsquo;ARaynorDesign&rsquo; link in the footer of the template, all I ask is for a donation of &pound;20.00 GBP.</p>	  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Center Code" Font-Size="20px" Font-Bold="true"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="centerCodeTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="36px" Width="288px"></asp:TextBox><br/><br/>
          <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="20px" Font-Bold="true"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="passwordTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="33px" TextMode="Password" Width="246px"></asp:TextBox><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="loginButton" runat="server" Text="Log In" OnClick="loginButton_Click" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="blue" ForeColor="White"  /><br/><br/>
        <asp:Label ID="megLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</asp:Content>

 






   

