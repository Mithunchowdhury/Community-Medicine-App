<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="DoctorEntryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.DoctorEntryUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Doctor Entry
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <div id="menu_items">
     <ul id="menu">
            <li><a href="HomeCenter.aspx">Home</a></li>
            <li class="current"><a href="DoctorEntryUI.aspx">Doctor Entry</a></li>
            <li><a href="TreatmentGivenUI.aspx">Treatment</a></li>
            <li><a href="MedicineStockReportUI.aspx">Medicine Stock Report</a></li>
            <li><a href="ShowAllHistoryUI.aspx">Treatment History</a></li>
              <li><a href="CenterLoginUI.aspx">Log Out</a></li>
          </ul>
        </div><!--close menu-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContentItem" runat="server">
    <h1>Doctor Entry</h1> 
	      <p>This standards compliant, simple, fixed width website template is released as an 'open source' design (under the Creative Commons Attribution 3.0 Licence), which means that you are free to download and use it for anything you want (including modifying and amending it). If you wish to remove the &lsquo;ARaynorDesign&rsquo; link in the footer of the template, all I ask is for a donation of &pound;20.00 GBP.</p>	  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Name" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="doctorNameTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="28px" Width="198px"></asp:TextBox><br /><br />
         <asp:Label ID="Label2" runat="server" Text="Degree" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="degreeTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="25px" Width="188px"></asp:TextBox><br /><br />
        <asp:Label ID="Label3" runat="server" Text="Specialization" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="specializationTextBox" runat="server" Font-Size="20px" Font-Bold="true"></asp:TextBox><br /><br />
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" /><br /><br />
        <asp:Label ID="mesLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</asp:Content>











