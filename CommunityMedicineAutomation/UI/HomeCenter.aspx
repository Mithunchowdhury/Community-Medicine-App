<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="HomeCenter.aspx.cs" Inherits="CommunityMedicineAutomation.UI.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Center Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <div id="menu_items">
     <ul id="menu">
            <li class="current"><a href="HomeCenter.aspx">Home</a></li>
            <li><a href="DoctorEntryUI.aspx">Doctor Entry</a></li>
            <li><a href="TreatmentGivenUI.aspx">Treatment</a></li>
            <li><a href="MedicineStockReportUI.aspx">Medicine Stock Report</a></li>
            <li><a href="ShowAllHistoryUI.aspx">Treatment History</a></li>
              <li><a href="CenterLoginUI.aspx">Log Out</a></li>
          </ul>
        </div><!--close menu-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContentItem" runat="server">
    <h1>Welcome To Your Website</h1> 
	      <p>This standards compliant, simple, fixed width website template is released as an 'open source' design (under the Creative Commons Attribution 3.0 Licence), which means that you are free to download and use it for anything you want (including modifying and amending it). If you wish to remove the &lsquo;ARaynorDesign&rsquo; link in the footer of the template, all I ask is for a donation of &pound;20.00 GBP.</p>	  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
     <form id="form1" runat="server">
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
       </form>
</asp:Content>
