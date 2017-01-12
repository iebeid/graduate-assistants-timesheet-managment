<%@ Page Title="User Registration" Language="C#" MasterPageFile="~/Sitemaster.master" AutoEventWireup="true" CodeFile="userinfo.aspx.cs" Inherits="userinfo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 576px;
            margin-right: 0px;
        }
               
        .style28
        {
        }
       
        .style32
        {
            width: 88px;
        }
        .style47
        {
            width: 157px;
            height: 34px;
        }
        .style49
        {
            width: 197px;
            height: 34px;
        }
        .style52
        {
            width: 21px;
        }
        .style53
        {
            width: 21px;
            height: 34px;
        }
        .style54
        {
            width: 157px;
        }
        .style57
        {
            width: 197px;
        }
        .style58
        {
            font-size: 12px;
            width: 136px;
        }
        .style60
        {
            width: 142px;
        }
        .style61
        {
            width: 25px;
        }
       
        .style62
        {
            width: 143px;
        }
        .style63
        {
            width: 164px;
        }
       
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--*************************************   Start Registration Form Panel  *************************************** --%> 

    <asp:Panel ID="panel1" runat="server" Visible="False">

    <div id ="formtitle"><asp:Label runat="server" 
            Text="Register a new Graduate Assistant or a Supervisor" CssClass="lbl_msg" ></asp:Label></div>
    <div id ="form"> 
       <table class="style1">
           <tr>
               <td class="style58">
                   User Name</td>
               <td class="style52">
                   :</td>
               <td class="style54">
                   <asp:TextBox ID="txt_userid" runat="server"></asp:TextBox>
               </td>
               <td class="style57">
                   <asp:RequiredFieldValidator ID="val1" runat="server" 
                       ControlToValidate="txt_userid" ErrorMessage="Username is required" 
                       CssClass="error"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="style58">
                   First Name</td>
               <td class="style52">
                   :</td>
               <td class="style54">
                   <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
               </td>
               <td class="style57">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style58">
                   Last Name</td>
               <td class="style52">
                   :</td>
               <td class="style54">
                   <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
               </td>
               <td class="style57">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style58">
                   T_No</td>
               <td class="style52">
                   :</td>
               <td class="style54">
                   <asp:TextBox ID="txt_tno" runat="server"></asp:TextBox>
               </td>
               <td class="style57">
                   <asp:RequiredFieldValidator ID="val2" runat="server" 
                       ControlToValidate="txt_tno" ErrorMessage="T_No is required" 
                       CssClass="error"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="style58">
                   E-Mail</td>
               <td class="style52">
                   :</td>
               <td class="style54">
                   <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
               </td>
               <td class="style57">
                   <asp:RegularExpressionValidator ID="val3" runat="server" 
                       ControlToValidate="txt_email" ErrorMessage="Invalid E-mail" 
                       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                       CssClass="error"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td class="style58">
                   Contact</td>
               <td class="style52">
                   :</td>
               <td class="style54">
                   <asp:TextBox ID="txt_contact" runat="server"></asp:TextBox>
               </td>
               <td class="style57">
                   <asp:RegularExpressionValidator ID="val4" runat="server" 
                       ErrorMessage="Invalid Contact number" CssClass="error" 
                       ControlToValidate="txt_contact" 
                       
                       
                       
                       ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td class="style58">
                   Designation</td>
               <td class="style52">
                   :</td>
               <td class="style54">
                   <asp:DropDownList ID="ddl_designation" runat="server">
                       <asp:ListItem>GA</asp:ListItem>
                       <asp:ListItem>Supervisor</asp:ListItem>
                       <asp:ListItem>Admin</asp:ListItem>
                   </asp:DropDownList>
               </td>
               <td class="style57">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style58">
                   Status</td>
               <td class="style52">
                   :</td>
               <td class="style54">
                   <asp:DropDownList ID="ddl_status" runat="server">
                       <asp:ListItem>0</asp:ListItem>
                       <asp:ListItem>1</asp:ListItem>
                   </asp:DropDownList>
               </td>
               <td class="style57">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style58">
                   Password</td>
               <td class="style53">
                   :</td>
               <td class="style47">
                   <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
               </td>
               <td class="style49">
                   <asp:RequiredFieldValidator ID="val5" runat="server" 
                       ControlToValidate="txt_pass" ErrorMessage="Password is required" 
                       CssClass="error"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="style58">
                   Confirm Password</td>
               <td class="style52">
                   :</td>
               <td class="style54">
                   <asp:TextBox ID="txt_passconf" runat="server" TextMode="Password"></asp:TextBox>
               </td>
               <td class="style57">
                   <asp:CompareValidator ID="val6" runat="server" 
                       ControlToCompare="txt_pass" ControlToValidate="txt_passconf" CssClass="error" 
                       ErrorMessage="Passwords did not match"></asp:CompareValidator>
               </td>
           </tr>
                      <tr>
               <td class="style58">
                   &nbsp;</td>
               <td class="style52">
                   &nbsp;</td>
                          <td class="style54">
                              &nbsp;</td>
               <td class="style57">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="style58">
                   &nbsp;</td>
               <td class="style52">
                   &nbsp;</td>
               <td class="style54">
                   <asp:Button ID="btn_register" runat="server" CssClass="btn" 
                       onclick="btn_reg_Click" Text="Register" Width="157px" />
               </td>
               <td class="style57">
                   
                   <asp:Button ID="btn_change" runat="server" CssClass="btn" 
                       onclick="change_Click" CausesValidation="false" Text="Change User Information" 
                       ToolTip="Click here to change account details of a user" Width="197px" />
                   
               </td>
           </tr>
       </table>
      <br />
<asp:Label ID="lbl_msg" runat="server" Text="" CssClass="lbl_msg"></asp:Label>
   </div>
</asp:Panel>
<%--*************************************   End Registration Form Panel  *************************************** --%> 


<%--*************************************   Start User Info Panel  *************************************** --%> 

<asp:Panel ID="panel2" runat="server" Visible="False">
<div id="userlist">
    <table class="style28">
        <tr>
            <td class="style62">
                <asp:Label runat="server" Text="Select a user from the list" ForeColor="Green"></asp:Label>
            </td>
            <td class="style61">
                :</td>
            <td class="style63">
                <asp:DropDownList ID="ddl_usr" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="T_no" DataValueField="T_no" Height="40px" Width="137px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style62">
                &nbsp;</td>
            <td class="style61">
                &nbsp;</td>
            <td class="style63">
                <asp:Button ID="btn_submit" runat="server" CssClass="btn" 
                    onclick="btn_submit_Click" Text="Submit" />
            </td>
        </tr>
    </table>
    <br />
    &nbsp; &nbsp; &nbsp; 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:accessconnection %>" 
        ProviderName="<%$ ConnectionStrings:accessconnection.ProviderName %>" 
        
        SelectCommand="SELECT [T_no] FROM [Login] ORDER BY [T_no]"></asp:SqlDataSource>

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="3" DataKeyNames="T_no" DataSourceID="SqlDataSource2" 
        GridLines="Vertical" Visible="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px" Height="30px" 
        Width="50%" ForeColor="Black">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" 
                SortExpression="Contact" />
            <asp:TemplateField HeaderText="Designation" SortExpression="Designation">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>GA</asp:ListItem>
                        <asp:ListItem>Supervisor</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <EditRowStyle Width="100%" />
        <EmptyDataRowStyle Font-Size="Small" />
        <FooterStyle BackColor="#CCCCCC" Font-Size="Small" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" 
            Font-Size="Small" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" 
            Font-Size="Small" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:accessconnection %>" 
        ProviderName="<%$ ConnectionStrings:accessconnection.ProviderName %>" 
        SelectCommand="SELECT * FROM [Users] WHERE ([T_no] = ?)" 
        DeleteCommand="DELETE l.*, u.* FROM Login l inner join Users u on u.T_no = l.T_no WHERE u.T_no = ?" 
        InsertCommand="INSERT INTO [Users] ([FirstName], [LastName], [Email], [Contact], [Designation], [Status]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        UpdateCommand="UPDATE [Users] SET [FirstName] = ?, [LastName] = ?, [Email] = ?, [Contact] = ?, [Designation] = ?, [Status] = ? WHERE [T_no] = ?">
        <DeleteParameters>
            <asp:Parameter Name="T_no" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="T_no" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Status" Type="Byte" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddl_usr" Name="T_no" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Status" Type="Byte" />
            <asp:Parameter Name="T_no" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</div>
</asp:Panel>
<%--*************************************   End User Info Panel *************************************** --%> 

<div id="auth">
    <asp:Label ID="lbl_auth" runat="server" Text="" CssClass="lbl_msg"></asp:Label>
</div>
</asp:Content>

