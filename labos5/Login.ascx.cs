using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace labos5
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool CheckUserNamePassword()
        {
            XElement korisnici = XElement.Load("./App_Data/korisnici.xml");

            var users = from user in korisnici.Elements("korisnik")
                        select new
                        {
                            username = (string)user.Element("korisnickoIme"),
                            password = (string)user.Element("lozinka")
                        };

            foreach (var user in users)
            {
                if (string.Compare(user.username, TextBoxUsername.Text, true) == 0 & user.password == TextBoxPassword.Text)
                {
                    return true;
                }

            }
            return false;
        }


        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            if (!CheckUserNamePassword())
            {
                PanelError.Visible = true;
            }
            else
            {
                DisplayBooks();
            }
        }

        private void DisplayBooks()
        {
            PanelDisplay.Visible = true;

            using(DataSet ds = new DataSet())
            {
                ds.ReadXml("./App_Data/popisKnjiga.xml");
                GridViewData.DataSource = ds;
                GridViewData.DataBind(); 
            }
        }
    }
}