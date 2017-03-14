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
        Panel1.Visible = true;
        DateTime DatumNu = DateTime.Today;
        DateTime DatumGeb = kalVerjaardag.SelectedDate;

        int AantalJaar = (DatumNu.Year - DatumGeb.Year);
        if(DatumNu.Month < DatumGeb.Month){AantalJaar = AantalJaar - 1;}
        if(DatumNu.Month == DatumGeb.Month){if(DatumNu.Day < DatumGeb.Day){AantalJaar = AantalJaar - 1;}}
        lblJaar.Text = AantalJaar.ToString();
        lblDatum.Text = DatumGeb.ToShortDateString();
    }

    protected void kalVerjaardag_SelectionChanged(object sender, EventArgs e)
    {
    }
}