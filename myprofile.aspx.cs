using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class myprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            Label1.Text = "Welcome " + Session["Username"] + "...!";
            Label2.Text = "What would you like to do today...?";
        }
        else
            Response.Redirect("home.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = true;
        Label3.Text = "Please enter the new password below...!";
    }

    protected void btn_changepass_Click(object sender, EventArgs e)
    {
        string tnum = Session["tno"].ToString();
        string usern = Session["Username"].ToString();
        OleDbConnection dbconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=|DataDirectory|\\GA.mdb");
        string sql = "UPDATE Login SET Login.[Password]= @p, Login.[Username]= @u where Login.[T_no]=@t";
        OleDbCommand cmd = new OleDbCommand(sql, dbconn);
        cmd.Parameters.AddWithValue("p", txt_confpass.Text);
        cmd.Parameters.AddWithValue("u", usern);
        cmd.Parameters.AddWithValue("t", tnum);
        dbconn.Open();
            cmd.ExecuteReader();
        dbconn.Close();
        Label3.Text = "Your account password has been changed successfully...!";
        back.Visible = true;
        Panel3.Visible = false;
    }

    protected void back_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        GridView1.Visible = true;
        back.Visible = true;
        Label3.Text = "You can make changes to the options below...!";
    }
}