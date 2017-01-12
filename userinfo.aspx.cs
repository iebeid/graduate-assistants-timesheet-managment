using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


public partial class userinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Convert.ToString(Session["role"]) == "Admin")
            {
                panel1.Visible = true;
                panel2.Visible = false;
            }
            else if (Session["role"] != null)
            {
                lbl_auth.Text = "Sorry...! " + Session["Username"].ToString() + "," + " you are not authorized to view this page...!";
            }
            else
                lbl_auth.Text = "Sorry...!, you are not authorized to view this page...!";
        }
    }

    protected void btn_reg_Click(object sender, EventArgs e)
    {
        OleDbConnection dbconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=|DataDirectory|\\GA.mdb");

        string sql = "INSERT INTO Users VALUES(@t,@f,@l,@e,@c,@d,@s)";
        OleDbCommand cmd = new OleDbCommand(sql, dbconn);
        cmd.Parameters.AddWithValue("t", txt_tno.Text);
        cmd.Parameters.AddWithValue("f", txt_fname.Text);
        cmd.Parameters.AddWithValue("l", txt_lname.Text);
        cmd.Parameters.AddWithValue("e", txt_email.Text);
        cmd.Parameters.AddWithValue("c", txt_contact.Text);
        cmd.Parameters.AddWithValue("d", ddl_designation.SelectedValue);
        cmd.Parameters.AddWithValue("s", ddl_status.SelectedValue);

        string sql1 = "INSERT INTO Login VALUES(@u,@t,@p)";
        OleDbCommand cmd1 = new OleDbCommand(sql1, dbconn);
        cmd1.Parameters.AddWithValue("u", txt_userid.Text);
        cmd1.Parameters.AddWithValue("t", txt_tno.Text);
        cmd1.Parameters.AddWithValue("p", txt_pass.Text);
        try
        {
            dbconn.Open();
            OleDbDataReader reader1 = cmd1.ExecuteReader();
            OleDbDataReader reader2 = cmd.ExecuteReader();
            dbconn.Close();

            lbl_msg.Text = "User Registered successfully...!";
        }

        catch (Exception)
        {
            lbl_msg.Text = "Username already exists...! Please enter another username";
        }
    }
    protected void change_Click(object sender, EventArgs e)
    {
        panel1.Visible = false;
        panel2.Visible = true;

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
}