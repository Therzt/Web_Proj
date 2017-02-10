using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UsersPages_DeviceCheckOut : MyBasePage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CheckOutButton_Click(object sender, EventArgs e)
    {
       try
       {
          DeviceCheckOutUpdateDBSqlDataSource.Update();
       }
       catch (Exception except)
       {
          // Handle the Exception.
       }

       UpdateSuccessLabel.Text = "Device checked out successfully!";
    }
    protected void CheckInButton_Click(object sender, EventArgs e)
    {
       try
       {
          DeviceCheckInUpdateDBSqlDataSource.Update();
       }
       catch (Exception except)
       {
          // Handle the Exception.
       }

       UpdateSuccessLabel.Text = "Device checked in successfully!";
    }
}