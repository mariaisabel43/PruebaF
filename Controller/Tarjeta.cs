using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;
using m = PruebaF.Model;

namespace PruebaF.Controller
{
    public class Tarjeta
    {
        public bool Guardar(m.Tarjetas tarjetas)
        {
            try
            {
                Database.Database db = new Database.Database();

                db.ObTarjeta(tarjetas);

                return true;
            }
            catch
            {
                return false;
            }
        }
        public List<m.Tarjetas> Tarjet()
        {
            Database.Database db = new Database.Database();

            DataTable ds = db.Tarjet();

            return ConvertDSToList(ds);
        }
        public List<m.Tarjetas> ConvertDSToList(DataTable ds)
        {
            List<m.Tarjetas> tarjetlist = new List<m.Tarjetas>();

            foreach (DataRow row in ds.Rows)
            {
                tarjetlist.Add(new m.Tarjetas
                {
                    Foto = row["Foto"].ToString(),
                    Banco = row["Banco"].ToString(),
                    Emisor = row["Emisor"].ToString(),
                    Nombre = row["Nombre"].ToString(),
                    Apellido = row["Apellido"].ToString(),
                    NTarjeta = Convert.ToInt32(row["NTarjeta"]),
                    CodigoS = Convert.ToInt16(row["CodigoS"]),
                    FExpiracion = Convert.ToDateTime(row["FExpiracion"])
                });
            }

            return tarjetlist;
        }
    }
}
