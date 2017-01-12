using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            loginpanel.Visible = false;
            successpanel.Visible = true;
            lbl_success.Text = Session["UserName"].ToString() + ",  You are already Logged in..!";
            lbl_red.Text = "";
        }
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        Session["Username"] = txt_uname.Text;
        OleDbConnection dbconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=|DataDirectory|\\GA.mdb");
        string sql = "SELECT UserName, Password, T_no FROM Login";
        OleDbCommand cmd = new OleDbCommand(sql, dbconn);
        dbconn.Open();
        OleDbDataReader reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            if (reader[0].Equals(txt_uname.Text))
            {
                if (reader[1].Equals(txt_pass.Text))
                {
                    Session.Add("tno", reader[2]);
                    OleDbConnection dbconn2 = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=|DataDirectory|\\GA.mdb");
                    string sql2 = "SELECT Designation, T_no FROM Users";
                    OleDbCommand cmd2 = new OleDbCommand(sql2, dbconn2);
                    dbconn2.Open();
                    OleDbDataReader reader2 = cmd2.ExecuteReader();

                    while (reader2.Read())
                    {
                        if (reader2[1].Equals(Session["tno"]))
                        {
                            Session.Add("role", reader2[0]);
                            loginpanel.Visible = false;
                            successpanel.Visible = true;
                            lbl_success.Text = Session["Username"].ToString() + ",  You have been Sucessfully Logged in..!";
                            Response.AddHeader("REFRESH", "1;URL=timesheet.aspx");
                        }
                    }
                    dbconn2.Close();
                }
                else
                    lbl_login.Text = "Incorrect Password...!";
            }
            else
                lbl_login.Text = "UserName cannot be found...!";
        }
        dbconn.Close();
    }
}