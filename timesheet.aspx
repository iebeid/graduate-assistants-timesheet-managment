<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.master" AutoEventWireup="true" CodeFile="timesheet.aspx.cs" Inherits="timesheet" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="AjaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 663px;
            margin-right: 0px;
        }
               
        .style57
        {
            width: 197px;
        }
        .style60
        {
            width: 269px;
        }
        .style61
        {
            font-size: 12px;
            width: 81px;
        }
        .style63
        {
            width: 61px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="panel1" runat="server">
<div id ="formtitle"><asp:Label ID="Label1" runat="server" 
            Text="Register a new Graduate Assistant or a Supervisor" CssClass="lbl_msg" ></asp:Label></div>
    <div id ="form"> 

        <table class="style1">
            <tr>
                <td class="style61">
                    Week Of</td>
                <td class="style63">
                    :</td>
                <td class="style60">
                    <asp:TextBox ID="txt_week" runat="server"></asp:TextBox>
                    <ajaxtoolkit:CalendarExtender ID="CalendarExtender1" runat="server" 
                    TargetControlID="txt_week" PopupButtonID="ImageButton1"/>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cal.png" 
                        AlternateText="Click here to display calendar" Width="17" Height="17" 
                        CausesValidation="False"/>
                </td>
                <td class="style57">
                    <asp:RequiredFieldValidator ID="val1" runat="server" 
                        ControlToValidate="txt_week" CssClass="error" 
                        ErrorMessage="Week is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style61">
                    Date</td>
                <td class="style63">
                    :</td>
                <td class="style60">
                    <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
                    <ajaxtoolkit:CalendarExtender ID="CalendarExtender2" runat="server" 
                    TargetControlID="txt_date" PopupButtonID="ImageButton2"/>
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cal.png" 
                        AlternateText="Click here to display calendar" Width="17" Height="17" 
                        CausesValidation="False"/>
                </td>
                <td class="style57">
                    <asp:RequiredFieldValidator ID="val2" runat="server" 
                        ControlToValidate="txt_date" CssClass="error" ErrorMessage="Date is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style61">
                    Time-In</td>
                <td class="style63">
                    :</td>
                <td class="style60">
                    <asp:TextBox ID="txt_tin" runat="server"></asp:TextBox>
                    (24Hrs Format)</td>
                <td class="style57">
                    <asp:RequiredFieldValidator ID="val3" runat="server" 
                        ControlToValidate="txt_tin" CssClass="error" ErrorMessage="Time-In is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style61">
                    Time-Out</td>
                <td class="style63">
                    :</td>
                <td class="style60">
                    <asp:TextBox ID="txt_tout" runat="server"></asp:TextBox>
                </td>
                <td class="style57">
                    <asp:RequiredFieldValidator ID="val4" runat="server" 
                        ControlToValidate="txt_tout" CssClass="error" 
                        ErrorMessage="Time-Out is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style61">
                    Supervisor</td>
                <td class="style63">
                    :</td>
                <td class="style60">
                    <asp:DropDownList ID="ddl_sup" runat="server" DataSourceID="AccessDataSource1" 
                        DataTextField="Name" DataValueField="Name">
                    </asp:DropDownList>
                </td>
                <td class="style57">
                    <asp:RequiredFieldValidator ID="val5" runat="server" 
                        ControlToValidate="ddl_sup" CssClass="error" 
                        ErrorMessage="Please select a supervisor"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style61">
                    Activity</td>
                <td class="style63">
                    :</td>
                <td class="style60">
                    <asp:TextBox ID="txt_activity" runat="server" TextMode="MultiLine" 
                        Height="59px" Width="268px"></asp:TextBox>
                </td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style61">
                    &nbsp;</td>
                <td class="style63">
                    &nbsp;</td>
                <td class="style60">
                    <asp:CompareValidator ID="val6" runat="server" ControlToCompare="txt_week" 
                        ControlToValidate="txt_date" CssClass="error" 
                        ErrorMessage="Enter Date in the current week" Operator="GreaterThanEqual"></asp:CompareValidator>
                    <br />
                    <asp:CompareValidator ID="val7" runat="server" ControlToCompare="txt_tin" 
                        ControlToValidate="txt_tout" CssClass="error" 
                        ErrorMessage="Time entry is incorrect" Operator="GreaterThan"></asp:CompareValidator>
                </td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style61">
                    &nbsp;</td>
                <td class="style63">
                    &nbsp;</td>
                <td class="style60">
                    <asp:Button ID="btn_register" runat="server" CssClass="btn" Text="Submit" 
                        Width="119px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_entry" runat="server" CssClass="btn" Text="View Entries" 
                        Width="116px" CausesValidation="False" />
                </td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
        </table>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/GA.mdb" 
            SelectCommand="SELECT RTRIM(FirstName) + ' ' + LastName AS Name FROM Users WHERE (Designation &lt;&gt; 'GA') AND (Status = 1)">
        </asp:AccessDataSource><AjaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"  CombineScripts="True">
    </AjaxToolkit:ToolkitScriptManager>
        <br />
        <asp:Label ID="lbl_msg" runat="server" CssClass="lbl_msg" Text=""></asp:Label>

    </div>
</asp:Panel>
<asp:Panel ID="Panel2" runat="server">
<div id="timesheetentry">

</div>
</asp:Panel>
<div id ="formtitle1"><asp:Label ID="lbl_auth" runat="server" Text="" CssClass="lbl_red"></asp:Label></div>
</asp:Content>
