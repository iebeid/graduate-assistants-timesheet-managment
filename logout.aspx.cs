using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            lbl_signout.Text = "You have been sucessfully logged out!";
            Session.Abandon();
            Session.Contents.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
            Response.AddHeader("REFRESH", "1;URL=home.aspx");
        }
        else
            Response.Redirect("home.aspx");
    }

}