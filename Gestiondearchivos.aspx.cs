using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;

namespace Segundo_parcial_DAI5_Franco_Orazietti
{
    public partial class Gestiondearchivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Registro.aspx");
            }

            if (!IsPostBack)
            {
                CargarArchivos();
            }
        }
        protected void btnSubir_Click(object sender, EventArgs e)
        {
            if (fuArchivo.HasFile)
            {
                string username = Session["username"].ToString();
                string userDir = Server.MapPath("~/Archivos/" + username);

                if (!Directory.Exists(userDir))
                {
                    Directory.CreateDirectory(userDir);
                }

                string filePath = Path.Combine(userDir, fuArchivo.FileName);
                fuArchivo.SaveAs(filePath);
                CargarArchivos();
            }
        }

        private void CargarArchivos()
        {
            string username = Session["username"].ToString();
            string userDir = Server.MapPath("~/Archivos/" + username);

            if (Directory.Exists(userDir))
            {
                DirectoryInfo dirInfo = new DirectoryInfo(userDir);
                FileInfo[] files = dirInfo.GetFiles();

                GridView1.DataSource = files;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Descargar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row =   GridView1.Rows[index];
                string fileName = row.Cells[0].Text;

                string username = Session["username"].ToString();
                string filePath = Server.MapPath("~/Archivos/" + username + "/" + fileName);


                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
        }
    }
}