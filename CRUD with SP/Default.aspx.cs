using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_with_SP
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetProductList();
            }
        }

        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=MyTest_DB;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            string iname = TextBox2.Text;
            string specification = TextBox3.Text;
            string unit = DropDownList1.SelectedValue;
            string status = RadioButtonList1.SelectedValue;
            DateTime cdate = DateTime.Parse(TextBox4.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec ProductSetup_SP '" + productid + "', '" + iname + "', '" + specification + "', '" + unit + "', '" + status + "', '" + cdate + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Insert Successful');", true);
            GetProductList();
        }

        void GetProductList()
        {
            SqlCommand co = new SqlCommand("exec ProductList_SP", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            string iname = TextBox2.Text;
            string specification = TextBox3.Text;
            string unit = DropDownList1.SelectedValue;
            string status = RadioButtonList1.SelectedValue;
            DateTime cdate = DateTime.Parse(TextBox4.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec ProductUpdate_SP '" + productid + "', '" + iname + "', '" + specification + "', '" + unit + "', '" + status + "', '" + cdate + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Update Successful');", true);
            GetProductList();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec ProductDelete_SP '" + productid + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Delete Successful');", true);
            GetProductList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec ProductSearch_SP '" + productid + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GetProductList();
        }
    }
}