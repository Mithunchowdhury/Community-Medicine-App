<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="MedicineEntryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.MedicineEntryUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Medicine Entry
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <div id="menu_items">
     <ul id="menu">
            <li><a href="Home.aspx">Home</a></li>
            <li><a href="DiseaseEntryUI.aspx">Disease Entry</a></li>
            <li class="current"><a href="MedicineEntryUI.aspx">Medicine Entry</a></li>
            <li><a href="CenterEntryUI.aspx">Create New Center</a></li>
            <li><a href="SendMedicineUI.aspx">Send Medicine</a></li>
              <li><a href="CenterLoginUI.aspx">LogIn Your Center</a></li>
          </ul>
        </div><!--close menu-->
</asp:Content>
<asp:Content ID="content4" ContentPlaceHolderID="ContentPlaceHolderContentItem" runat="server">
    <h1>Medicine Entry</h1> 
	      <p>This standards compliant, simple, fixed width website template is released as an 'open source' design (under the Creative Commons Attribution 3.0 Licence), which means that you are free to download and use it for anything you want (including modifying and amending it). If you wish to remove the &lsquo;ARaynorDesign&rsquo; link in the footer of the template, all I ask is for a donation of &pound;20.00 GBP.</p>	  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Name of Medicine with Mg/Ml" Font-Size="20px" Font-Bold="true"></asp:Label><br />
    <asp:TextBox ID="medicineEntryTextBox" runat="server" Height="29px" Width="377px" Font-Size="15px" Font-Bold="true"></asp:TextBox><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" Height="34px" Width="134px" /><br/><br/>
    
    <asp:Label ID="msgLabel" runat="server" Text=""></asp:Label>
    <asp:GridView ID="medicineEntryGridView" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="OnPaging" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="SerialNo" HeaderText="Serial No." />
            <asp:BoundField DataField="NameOfMedicine" HeaderText="Name Of Medicine" />
        </Columns>
           <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
           </asp:GridView>			  
		 </form>

</asp:Content>



