using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using c = PruebaF.Controller; 

namespace PruebaF.Views
{
    public partial class Tarjetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load();
            }
        }
        protected void load()
        {
            
            c.Tarjeta tarjetaController = new c.Tarjeta();

            repTarjeta.DataSource = tarjetaController.Tarjet();
            repTarjeta.DataBind();
        }
        
    }
    
}