using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormValidation
{
    public partial class JQueryFormValidation : System.Web.UI.Page
    {
        DbConn obj = new DbConn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string qry = "INSERT INTO Login (Name, Email, Password, Phone, CNIC) VALUES ('" + name.Text + "','" + email.Text + "','" + password.Text + "','" + phone.Text + "', '"+ CNIC.Text +"')";
            bool res = obj.UDI(qry);
            if (res == true)
            {
                Response.Redirect("LoginTextBoxValidation.aspx");
            }
            else
            {
                    Response.Write("<script>alert('Not Register');</script>");
            }
        }
    }
}