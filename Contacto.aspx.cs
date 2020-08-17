using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;

public partial class Contacto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string nombre = Request.Form["name"].ToString();  
            string from = Request.Form["email"].ToString();
            string asunto = Request.Form["email"].ToString();
            string mensaje = Request.Form["email"].ToString();

            //Asunto
            string subject = "Hola, " + nombre + ", Coshipigua recibió tu mensaje :)";

            //Contenido
            string body = "Prueba";

            string resultado = sendGmail(from, subject, body);
            lblResultado.Text = resultado;
        }
    }

        private string sendGmail(string from, string subject, string mensaje)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true; //Socket Secure Layer https
        client.Host = "smtp.gmail.com";
        client.Port = 587;

        //Nos autenticamos en el SMTP
        System.Net.NetworkCredential credencials = new System.Net.NetworkCredential("rachel.palomeque@gmail.com", "aquí va la contraseña");
        client.UseDefaultCredentials = false;
        client.Credentials = credencials;

        //Creamos nuestro correo
        MailMessage oMail = new MailMessage();
        oMail.From = new MailAddress(from);
        oMail.To.Add(new MailAddress("rachel.palomeque@gmail.com")); //gcmedina@gmail.com
        oMail.Subject = subject;
        oMail.IsBodyHtml = true;
        oMail.Priority = MailPriority.Low
            ;
        oMail.Body = mensaje;

        try
        {
            client.Send(oMail);
            return "Correo enviado";
        }
        catch (Exception ex)
        {
            return "Error en el envío. " + ex.Message;
        }
    } // fin de sendGmail

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx?Id=0");
    }
}
