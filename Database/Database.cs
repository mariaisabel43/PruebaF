using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using m = PruebaF.Model;

namespace PruebaF.Database
{
    public class Database
    {
        const string database = "Tarjetas";
        const string server = "localhost";
        SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True");

        public DataTable Tarjet()
        {

            return this.Fill("[dbo].[spTarjeta]", null);
        }
        public void ObTarjeta(m.Tarjetas tarjetas)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@Foto", tarjetas.Foto),
                new SqlParameter("@Banco", tarjetas.Banco),
                new SqlParameter("@Emisor", tarjetas.Emisor),
                new SqlParameter("@Nombre", tarjetas.Nombre),
                new SqlParameter("@Apellido", tarjetas.Apellido),
                new SqlParameter("@NTarjeta", tarjetas.NTarjeta),
                new SqlParameter("@CodigoS", tarjetas.CodigoS),
                new SqlParameter("@FExpiracion", tarjetas.FExpiracion),
            };

            this.ExecuteQuery("[dbo].[ObTarjeta]", param);
        }

        public DataTable Fill(string StoredProcedure, List<SqlParameter> param)
        {
            try
            {
                using (this.connection)
                {
                    connection.Open();
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = StoredProcedure;

                    if (param != null)
                    {
                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }
                    }
                    DataTable ds = new DataTable();
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds);
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void ExecuteQuery(string StoredProcedure, List<SqlParameter> param)
        {
            try
            {
                using (this.connection)
                {
                    connection.Open();
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = StoredProcedure;

                    if (param != null)
                    {
                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }
                    }

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}