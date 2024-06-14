using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Segundo_parcial_DAI5_Franco_Orazietti
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = txtEmail.Text;
                string username = txtUsername.Text;
                string password = txtPassword.Text;

                // Crear Cookie con la contraseña
                HttpCookie passwordCookie = new HttpCookie("password", password);
                Response.Cookies.Add(passwordCookie);

                // Crear Session con el nombre de usuario
                Session["username"] = username;

                // Redirigir a la gestión de archivos
                Response.Redirect("Gestiondearchivos.aspx");
            }
        }
    }
}