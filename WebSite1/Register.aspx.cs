using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Registers();
        Response.RedirectPermanent("Default.aspx");
    }


    protected void Registers()
    {
        string strConn = WebConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;
        using (SqlConnection Objconn = new SqlConnection(strConn))
        {
            Objconn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = Objconn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "sqlRegister";
                ObjCM.Parameters.AddWithValue("@ID ", IDline.Text);
                ObjCM.Parameters.AddWithValue("@Firstname ", TextBoxFname.Text);
                ObjCM.Parameters.AddWithValue("@Lastname ", TextBoxLname.Text);
                ObjCM.Parameters.AddWithValue("@Email ", txtEmail.Text);
                ObjCM.Parameters.AddWithValue("@Phone ", TextBoxPno.Text);
                ObjCM.Parameters.AddWithValue("@Address ", TextBoxadd.Text);
                SqlDataReader ObjDR = ObjCM.ExecuteReader();
            }
            Objconn.Close();
        }
    }
}