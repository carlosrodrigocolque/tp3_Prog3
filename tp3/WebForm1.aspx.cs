using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

           
            if (ddlLocalidad.AutoPostBack)
            {
                txtPass.Attributes.Add("value", txtPass.Text);
                txtRepeatPass.Attributes.Add("value", txtPass.Text);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                txtLocalidad.Text = "";
                Label1.Text = "";
                lblSaveUser.Text = "Bienvenido " + txtUser.Text;
            }
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            String localidad = txtLocalidad.Text.Trim();
            Boolean existe = false;


            
            if (Page.IsValid==true)
            {
                foreach (ListItem aux in ddlLocalidad.Items)
                {
                    if (localidad.Equals(aux.ToString(), StringComparison.OrdinalIgnoreCase)) { existe = true; }
                }
                if (existe == false)
                {
                    ddlLocalidad.Items.Add(localidad.ToUpper().Trim());
                }
                txtLocalidad.Text = "";
                txtUser.Text = "";
                txtPass.Attributes.Clear();
                txtRepeatPass.Attributes.Clear();
                txtEmail.Text = "";
                txtCP.Text = "";
                ddlLocalidad.ClearSelection(); 
            }          
            lblSaveUser.Text="";
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}