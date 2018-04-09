using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW3
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        public void RenderSjoerd()
        {
            Response.WriteFile("Include/IndexSjoerd.aspx");
        }

        public void WriteResults()
        {
            Response.Write(Request.Form["txtOpdrachtnummer"] + "<br />");
            Response.Write(Request.Form["txtBanden"] + "<br />");
        }
    }
}