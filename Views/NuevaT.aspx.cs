using PruebaF.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using m = PruebaF.Model;
using c = PruebaF.Controller;
using PruebaF.Model;
using System.Security.Cryptography;
using System.Text;
using System.Data;

namespace PruebaF.Views
{
    public partial class NuevaT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            }
        }
        protected void btnSave_ServerClick(object sender, EventArgs e)
        {
            List<m.Tarjetas> tarjetas = new List<m.Tarjetas>();
            m.Tarjetas tarjeta = new m.Tarjetas()
            {
                Foto = (DropDownFoto.SelectedValue),
                Banco = (dropDownBancos.SelectedValue),
                Emisor = (DropDownEmisor.SelectedValue),
                Nombre = NombreI.Text,
                //NTarjeta = NTarjetaI.Value(),
                //CodigoS = CodigoSI.Value(),
                FExpiracion = FExpiracion.SelectedDate,
            };
            tarjetas.Add(tarjeta);

            c.Tarjeta istacia = new c.Tarjeta();
            istacia.Guardar(tarjeta);

            Message("Se registro la nueva tarjeta");
            Response.Redirect("~/View/Tarjetas.aspx");
        }
        public void Message(string Mensaje)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{Mensaje}');", true);
        }
        protected void DropDownFoto_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void dropDownBancos_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void DropDownEmisor_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
  
}
