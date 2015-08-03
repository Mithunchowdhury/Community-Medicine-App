<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CommunityMedicineAutomation.UI.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
   Home 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <div id="menu_items">
     <ul id="menu">
            <li class="current"><a href="Home.aspx">Home</a></li>
            <li><a href="DiseaseEntryUI.aspx">Disease Entry</a></li>
            <li><a href="MedicineEntryUI.aspx">Medicine Entry</a></li>
            <li><a href="CenterEntryUI.aspx">Create New Center</a></li>
            <li><a href="SendMedicineUI.aspx">Send Medicine</a></li>
              <li><a href="CenterLoginUI.aspx">LogIn Your Center</a></li>
          </ul>
        </div><!--close menu-->
</asp:Content>
<asp:Content ID="content4" ContentPlaceHolderID="ContentPlaceHolderContentItem" runat="server">
    <h1>Welcome To Your Website</h1> 
	      <p>This standards compliant, simple, fixed width website template is released as an 'open source' design (under the Creative Commons Attribution 3.0 Licence), which means that you are free to download and use it for anything you want (including modifying and amending it). If you wish to remove the &lsquo;ARaynorDesign&rsquo; link in the footer of the template, all I ask is for a donation of &pound;20.00 GBP.</p>	  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <form id="form1" runat="server">
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
       </form>
</asp:Content>