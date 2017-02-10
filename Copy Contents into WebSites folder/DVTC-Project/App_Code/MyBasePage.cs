using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MyBasePage
/// </summary>
public class MyBasePage : System.Web.UI.Page
{
    public MyBasePage()
    {
        this.PreRender += Page_PreRender;
    }
    private void Page_PreRender(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(this.Title))
        {
            this.Title = "DVT&C Scanner App";
        }
    }
}