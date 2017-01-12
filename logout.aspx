<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.master" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="msg">
        <asp:Label ID="lbl_signout" runat="server" Text="" CssClass="lbl_msg"></asp:Label>
            <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_red" runat="server" CssClass="lbl_msg" ForeColor="#CC3300" Text="You will now be redirected to home page....!"></asp:Label>
    </div>
</asp:Content>

