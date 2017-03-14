using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime vandaag = DateTime.Now;
        TimeSpan t = DateTime.Parse("16/04/2017 00:00:01 AM") - vandaag;
        lblUren.Text =  string.Format("{0}",  (int)t.TotalHours);
        lblMinuten.Text = string.Format("{0}", t.Minutes);
        lblSeconden.Text = string.Format("{0}", t.Seconds);
        litVandaag.Text = vandaag.ToString(@"dd-mm-yy");
        litTijd.Text = vandaag.ToString(@"hh:mm:ss");
    }
}