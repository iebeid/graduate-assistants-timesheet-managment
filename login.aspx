<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 65%;
        }
        .style6
        {
            width: 59px;
            height: 51px;
        }
        .style7
        {
            width: 194px;
            height: 51px;
        }
        .style8
        {
            height: 51px;
            width: 195px;
        }
        .style15
        {
            width: 125px;
            height: 51px;
        }
        .style19
        {
            width: 194px;
            height: 27px;
        }
        .style21
        {
            width: 125px;
            height: 40px;
        }
        .style22
        {
            width: 59px;
            height: 40px;
        }
        .style23
        {
            width: 128px;
            height: 40px;
        }
        .style24
        {
            height: 40px;
            width: 195px;
        }
        .style25
        {
            width: 125px;
            height: 27px;
        }
        .style26
        {
            width: 59px;
            height: 27px;
        }
        .style27
        {
            height: 27px;
            width: 195px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="loginpanel" runat="server">
<div id="formtitle">
    <asp:Label runat="server" 
        Text="Enter your username and password below:" CssClass="lbl_msg"></asp:Label></div>
<div id="form">
    <table class="style1">
        <tr>
            <td class="style21">
                UserName</td>
            <td class="style22">
                :</td>
            <td class="style23">
                <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please enter a username" CssClass="error" Font-Bold="False" 
                    ControlToValidate="txt_uname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
                Password</td>
            <td class="style22">
                :</td>
            <td class="style23">
                <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please enter a password" CssClass="error" 
                    ControlToValidate="txt_pass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
                </td>
            <td class="style26">
                </td>
            <td class="style19">
                <asp:Label ID="lbl_login" runat="server" CssClass="error"></asp:Label>
            </td>
            <td class="style27">
                </td>
        </tr>
        <tr>
            <td class="style15">
                </td>
            <td class="style6">
                </td>
            <td class="style7">
                <asp:Button ID="btn_login" runat="server" Text="Login" CssClass="btn" 
                    onclick="btn_login_Click" PostBackUrl="~/login.aspx" />
            </td>
            <td class="style8">
                
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </asp:Panel>
    <asp:Panel ID="successpanel" runat="server" Visible="False">
        <div id="success">
        <asp:Label ID="lbl_success" runat="server" Font-Bold="False" 
                Font-Italic="False" CssClass="lbl_msg"></asp:Label>
        <br />
        <br />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_red" runat="server" CssClass="lbl_red" ForeColor="#CC3300" 
                Text="You will now be redirected to timesheet page....!"></asp:Label>
        </div>
    </asp:Panel>
    <br />
    <br />
    <br />
</asp:Content>

