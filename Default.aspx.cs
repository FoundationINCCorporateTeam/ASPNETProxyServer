using System;
using System.IO;
using System.Net;
using System.Text;
using System.Web.UI;

namespace ASPNetProxyServer
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void FetchButton_Click(object sender, EventArgs e)
        {
            string url = UrlTextBox.Text.Trim();
            if (string.IsNullOrEmpty(url))
            {
                ResponseLiteral.Text = "Please enter a URL.";
                return;
            }

            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                request.Method = "GET";

                using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
                using (Stream responseStream = response.GetResponseStream())
                using (StreamReader reader = new StreamReader(responseStream, Encoding.UTF8))
                {
                    string responseText = reader.ReadToEnd();
                    ResponseLiteral.Text = Server.HtmlEncode(responseText).Replace("\n", "<br />");
                }
            }
            catch (Exception ex)
            {
                ResponseLiteral.Text = $"Error fetching URL: {ex.Message}";
            }
        }
    }
}
