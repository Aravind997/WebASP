using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = ConfigurationManager.AppSettings["HeaderText"];
            Label4.Text = ConfigurationManager.AppSettings["FooterText"];
            Label6.Text = ConfigurationManager.AppSettings["VisitorCount"];
            if (Session["Default"]?.ToString() == "DefaultText1")
            {
                Session.Remove("Default");
                Session.Add("Default", "DefaultText2");
                Label1.Text = System.Configuration.ConfigurationManager.AppSettings["DefaultText2"];
            }
            else
            {
                Session.Remove("Default");
                Session.Add("Default", "DefaultText1");
                Label1.Text = System.Configuration.ConfigurationManager.AppSettings["DefaultText1"];
            
            }

        }
        
       
        }
    }
