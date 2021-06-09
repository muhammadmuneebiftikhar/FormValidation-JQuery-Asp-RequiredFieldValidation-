using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormValidation
{
    public partial class LoginTextBoxValidation : System.Web.UI.Page
    {
        DbConn obj = new DbConn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string qry = "Select * from Login where Name = '" + txtName.Text + "'";
            DataTable dt = obj.Search(qry);
            if (dt != null)
            {
                if (txtPassword.Text.Equals(dt.Rows[0]["Password"].ToString()) && txtEmail.Text.Equals(dt.Rows[0]["Email"].ToString()))
                {
                    Session["Name"] = txtName.Text;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Password or Email');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Not Registered');</script>");
            }
        }
    }
}