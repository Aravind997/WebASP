using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Web.Configuration;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static Configuration configuration;
        private static AppSettingsSection appSettingsSection;
        private static KeyValueConfigurationCollection settings;
        int NewVisitorCount = 0;
        public WebForm1()
        {
            configuration = WebConfigurationManager.OpenWebConfiguration("~");
            appSettingsSection = (AppSettingsSection)configuration.GetSection("appSettings");
            settings = appSettingsSection.Settings;
        }
        protected void Page_PreRender()
        {
            
            int VisitorCount = int.Parse(ConfigurationManager.AppSettings["VisitorCount"]);
            NewVisitorCount = ++VisitorCount;
            settings["VisitorCount"].Value = NewVisitorCount.ToString();
            configuration.Save();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label8.Visible = false;
            Page.Title = string.Format("Master Page Tutorials :: About :: {0:d}", DateTime.Now);
            Label5.Text = ConfigurationManager.AppSettings["HeaderText"];     
            Label7.Text = ConfigurationManager.AppSettings["FooterText"];
            int VisitorCount = int.Parse(ConfigurationManager.AppSettings["VisitorCount"]);
            Label6.Text= "You are visitor number "+ (++VisitorCount);            
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string UserName = ConfigurationManager.AppSettings["UserName"];
            string Password = ConfigurationManager.AppSettings["Password"];


            if ((TextBox1.Text==UserName) &&(TextBox2.Text==Password))

            {                
                Session.Add("UserID", UserName);                
                Response.Redirect("Admin.aspx");
               
            }
            else
            {
                Label8.Visible=true;
                
            }
        
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
