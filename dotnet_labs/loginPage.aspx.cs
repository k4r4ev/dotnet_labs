using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace LAB_11_pro
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.cn.Open();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            connection.cn.Close();
        }

        protected void ButtonConnection_Click(object sender, EventArgs e)
        {
            connection.cmd = new MySqlCommand("SELECT * FROM users WHERE name = '"
                + TextBox1.Text +
                "' AND pass = '" + TextBox2.Text + "'", connection.cn);
            connection.dr = connection.cmd.ExecuteReader();
            connection.dr.Read();
            if (connection.dr.HasRows)
            {
                Session["login"] = TextBox1.Text;
                connection.dr.Close();
                Response.Redirect("default.aspx");
            }
            else
            {
                connection.dr.Close();
                Response.Write("Вход не корректен");
            }
        }
    }
}