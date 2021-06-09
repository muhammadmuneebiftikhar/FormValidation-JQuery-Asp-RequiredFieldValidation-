using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FormValidation
{
    public class DbConn
    {
        private SqlConnection SqlCon;
        public DbConn()
        {
            SqlCon = new SqlConnection("Data Source=MUNEEB;Initial Catalog=Vp_Lab;Integrated Security=True");
        }
        public bool UDI(string qry)
        {
            SqlCon.Open();
            SqlCommand cmd = new SqlCommand(qry, SqlCon);
            int res = cmd.ExecuteNonQuery();
            SqlCon.Close();
            if (res > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public DataTable Search(string qry)
        {
            SqlCon.Open();
            SqlDataAdapter sda = new SqlDataAdapter(qry, SqlCon);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            SqlCon.Close();
            if (dt.Rows.Count > 0)
            {
                return dt;
            }
            return null;
        }
    }
}