using System;
using System.Web;


namespace PruebaF.Model
{
    public class Tarjetas
    {
        public string Foto { get; set; }
        public string Banco { get; set; }
        public string Emisor { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int NTarjeta { get; set; }
        public int CodigoS { get; set; }
        public DateTime FExpiracion { get; set; }
        public bool isReady = false;
        public static string Encriptar(string NTarjeta)
        {
            string result = string.Empty;
            byte[] encryted =System.Text.Encoding.Unicode.GetBytes(NTarjeta);
            result = Convert.ToBase64String(encryted);
            return result;
        }

    }
}
