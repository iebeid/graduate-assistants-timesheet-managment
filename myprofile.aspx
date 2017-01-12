<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 40%;
            height: 55px;
        }
        .style25
        {
            font-weight: bold;
            width: 179px;
            height: 27px;
        }
        .style26
        {
            width: 27px;
            height: 27px;
        }
        .style19
        {
            width: 331px;
            height: 27px;
        }
        .style15
        {
            width: 179px;
            height: 51px;
        }
        .style7
        {
            width: 331px;
            height: 51px;
        }
        .style29
        {
            width: 27px;
            height: 51px;
        }
        .style30
        {
            width: 27px;
            height: 40px;
        }
        .style32
        {
            width: 718px;
            height: 103px;
        }
        .style34
        {
            width: 331px;
            height: 40px;
        }
        .style35
        {
            font-weight: bold;
            width: 179px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
    <div id="msg">
        <asp:Label ID="Label1" runat="server" CssClass="lbl_red"></asp:Label>
    </div>
    <div id="form">
        <asp:Label ID="Label2" runat="server" Text="" CssClass="lbl_msg"></asp:Label><br /><br />
        
        <table class="style1">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Change Password" 
                        onclick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="btn" 
                        Text="Change Account Info" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <div id="msg1">
            <asp:Label ID="Label3" runat="server" CssClass="lbl_red"></asp:Label>
        </div>
        <div id="form1">
            <asp:Panel ID="Panel3" runat="server" Visible="False">
            
            <table class="style32">
                <tr>
                    <td class="style35">
                        New Password</td>
                    <td class="style30">
                        :</td>
                    <td class="style34">
                        <asp:TextBox ID="txt_newpass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            CssClass="error" ErrorMessage="Cannot be empty...*" 
                            ControlToValidate="txt_newpass"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style35">
                        Confirm Password</td>
                    <td class="style30">
                        :</td>
                    <td class="style34">
                        <asp:TextBox ID="txt_confpass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            CssClass="error" ErrorMessage="Cannot be empty...*" 
                            ControlToValidate="txt_confpass"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style25">
                    </td>
                    <td class="style26">
                    </td>
                    <td class="style19">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ErrorMessage="Passwords do not match" ControlToCompare="txt_newpass" 
                            ControlToValidate="txt_confpass" CssClass="error"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                    </td>
                    <td class="style29">
                    </td>
                    <td class="style7">
                        <asp:Button ID="btn_changepass" runat="server" CssClass="btn" 
                            onclick="btn_changepass_Click" Text="Change Password" 
                            EnableViewState="False" />
                    </td>
                </tr>
            </table>
            </asp:Panel>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" Visible="False" BackColor="White" 
                BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
                GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" 
                        SortExpression="LastName" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                        SortExpression="FirstName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" 
                        SortExpression="Contact" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:accessconnection %>" 
                ProviderName="<%$ ConnectionStrings:accessconnection.ProviderName %>" 
                SelectCommand="SELECT [LastName], [FirstName], [Email], [Contact] FROM [Users] WHERE ([T_no] = ?)" 
                UpdateCommand="UPDATE [Users] SET [FirstName] = ?, [LastName] = ?, [Email] = ?, [Contact] = ? WHERE [T_no] = ?">
                <SelectParameters>
                    <asp:SessionParameter Name="T_no" SessionField="tno" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:SessionParameter Name="T_no" SessionField="tno" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="back" runat="server" Text="Go Back" CssClass="btn" 
                Visible="False" CausesValidation="False" onclick="back_Click" 
                PostBackUrl="~/myprofile.aspx" />
        </div>
    </asp:Panel>
</asp:Content>

