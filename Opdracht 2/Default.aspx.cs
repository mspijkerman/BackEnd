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

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "1")
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }

    protected void btnMaakKaart_Click(object sender, EventArgs e)
    {
        string Naam, Geslacht, Hobby, Opleiding;
        Naam = txtNaam.Text;
        Geslacht = rbGeslacht.SelectedItem.Text;
        Opleiding = cbOpleiding.SelectedItem.Text;
        Hobby = "";
        for(int i=0; i < chkHobby.Items.Count; i++)
        {
            if (chkHobby.Items[i].Selected)
            {
                Hobby += chkHobby.Items[i].Text + " ";
            }
        }
        Response.Write("Naam: " + Naam + "<br />");
        Response.Write("Hobby: "+ Hobby + "<br />");
        Response.Write("Opleiding: " + Opleiding + "<br />");
        Response.Write("Geslacht " + Geslacht + "<br />");
    }
}