using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private static Configuration configuration;
        private static AppSettingsSection appSettingsSection;
        private static KeyValueConfigurationCollection settings;
        public WebForm2()
        {
            configuration = WebConfigurationManager.OpenWebConfiguration("~");
            appSettingsSection = (AppSettingsSection)configuration.GetSection("appSettings");
            settings = appSettingsSection.Settings;
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["UserID"]==null)
            {                
                Response.Redirect("Default.aspx");
            }
            else
            {
                
                Label1.Text = ConfigurationManager.AppSettings["HeaderText"];
                Label8.Text = ConfigurationManager.AppSettings["FooterText"];
                Label9.Text = ConfigurationManager.AppSettings["VisitorCount"];
            }

        }

       
        protected void Logout_Click(object sender, EventArgs e)
        {
            {
                Session.Remove("UserID");
                Response.Redirect("Default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("UserID");
            settings["DefaultText1"].Value = TextBox1.Text;
            settings["DefaultText2"].Value = TextBox2.Text;
            settings["HeaderText"].Value = TextBox3.Text;
            settings["FooterText"].Value = TextBox5.Text;
            configuration.Save();
            Response.Redirect("Default.aspx");
        }


    }
    }
