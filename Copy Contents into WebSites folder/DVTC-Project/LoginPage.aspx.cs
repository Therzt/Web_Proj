using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : MyBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { 
            LoginTextBox.Focus();
        }
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (LoginTextBox.Text == "admin")
        {
            Response.Redirect("AdminPages/AdminDevicesAddEdit.aspx");
        }

        else if (LoginTextBox.Text == "admin2")
        {
            Response.Redirect("AdminPages/AdminUsers.aspx");
        }
        else if (LoginTextBox.Text == "user")
        {
            Response.Redirect("UsersPages/DeviceCheckOut.aspx");
        }
    }
    protected void LoginTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}