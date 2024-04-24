using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionVentas
{
    public partial class ConsultarVentas : System.Web.UI.Page
    {
        public class Venta
        {
            public string fecha;
            public string vendedor;
            public string detalle;
            public int monto;

            public Venta(string fecha, string vendedor, string detalle, int monto)
            {
                this.fecha = fecha;
                this.vendedor = vendedor;
                this.detalle = detalle;
                this.monto = monto;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {


            if (File.Exists(Server.MapPath(".")+"/archivo.txt"))
                {
                    StreamReader streamReader = new StreamReader(Server.MapPath(".") + "/archivo.txt");
                    string[] lines = (streamReader.ReadToEnd()).Split('\n');
                    streamReader.Close();
                    Label1.Text = "<hr>";
                    int lineCount = 0;
                    List<Venta> listVenta = new List<Venta>();

                    foreach(string line in lines)
                    {
                        lineCount++;
                        if(lineCount%4 == 0)
                        {
                            string fecha = lines[lineCount - 4].ToString().TrimEnd('\r');
                            string vendedor = lines[lineCount - 3].ToString().TrimEnd('\r');
                            string detalle = lines[lineCount - 2].ToString().TrimEnd('\r');
                            int monto = int.Parse(lines[lineCount - 1].ToString().TrimEnd('\r'));
                            Venta venta = new Venta(fecha, vendedor, detalle, monto);
                            listVenta.Add(venta);
                        }
                    }

                    listVenta.Sort((a, b) => b.monto.CompareTo(a.monto));
                    foreach (Venta venta in listVenta)
                    {
                        Label1.Text += $"{venta.fecha.ToString()}" + "<br>";
                        Label1.Text += $"{venta.vendedor.ToString()}" + "<br>";
                        Label1.Text += $"{venta.detalle.ToString()}" + "<br>";
                        Label1.Text += $"{venta.monto.ToString()}" + "<br>";
                        Label1.Text += "<hr>";
                    }
                }
            else
                {
                    Label1.Text = "No se encontraron datos.";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}