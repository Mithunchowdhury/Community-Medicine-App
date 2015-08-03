<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="CenterEntryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.CenterEntryUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Center Entry
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <div id="menu_items">
     <ul id="menu">
            <li><a href="Home.aspx">Home</a></li>
            <li><a href="DiseaseEntryUI.aspx">Disease Entry</a></li>
            <li><a href="MedicineEntryUI.aspx">Medicine Entry</a></li>
            <li class="current"><a href="CenterEntryUI.aspx">Create New Center</a></li>
            <li><a href="SendMedicineUI.aspx">Send Medicine</a></li>
              <li><a href="CenterLoginUI.aspx">LogIn Your Center</a></li>
          </ul>
        </div><!--close menu-->
</asp:Content>
<asp:Content ID="content4" ContentPlaceHolderID="ContentPlaceHolderContentItem" runat="server">
    <h1>Center Entry</h1> 
	      <p>This standards compliant, simple, fixed width website template is released as an 'open source' design (under the Creative Commons Attribution 3.0 Licence), which means that you are free to download and use it for anything you want (including modifying and amending it). If you wish to remove the &lsquo;ARaynorDesign&rsquo; link in the footer of the template, all I ask is for a donation of &pound;20.00 GBP.</p>	  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
   <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Name" Font-Size="20px" Font-Bold="true"></asp:Label><br /> 
        <asp:TextBox ID="centerNameTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="33px" Width="647px"></asp:TextBox><br/><br/>
        <asp:Label ID="Label2" runat="server" Text="District" Font-Size="20px" Font-Bold="true"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="districtCenterDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="districtCenterDropDownList_SelectedIndexChanged" Font-Size="15px" Font-Bold="true" Height="24px" Width="104px"></asp:DropDownList><br/><br/>
        <asp:Label ID="Label3" runat="server" Text="Thana" Font-Size="20px" Font-Bold="true"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="thanaCenterDropDownList" runat="server" Font-Size="15px" Font-Bold="true" Height="31px" Width="114px"></asp:DropDownList><br/><br/>
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" /><br/><br/>
        <asp:Label ID="megLabel" runat="server" Text=""></asp:Label>
        <br/><br/>
    </form>

</asp:Content>

 




    