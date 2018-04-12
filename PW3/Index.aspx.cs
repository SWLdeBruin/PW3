using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace PW3
{
    public partial class Index : System.Web.UI.Page
    {
        DateTime datumOpgesteld;
        int opdrachtNummer;
        double? hoofdGiekLengte;
        double? mechSectieLengte;
        double? hulpGiekLengte;
        double? hoofdGiek_GiekHoek;
        double? hulpGiek_GiekHoek;
        double? totaleGiekLengte;
        int hijskabelAantalParten;
        string zwenkHoek;
        double? eigenMassaBallast;
        double? toelaatbareBedrijfsLast;
        double? lmbInWerking;
        double? proefLast;
        bool akkoord;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected dynamic GetPostVariable(String id)
        {
            return Request.Form[id];
        }

        protected void FormHandling()
        {
            if (IsPostBack)
            {
                datumOpgesteld = DateTime.Now;

                //opdrachtNummer = ConvertPostToDouble("txtOpdrachtnummer");
                opdrachtNummer = Convert.ToInt32(GetPostVariable("txtOpdrachtnummer"));
                hoofdGiekLengte = ConvertPostToDouble("txtHoofdGiek");
                mechSectieLengte = ConvertPostToDouble("txtMechanischeSectie");
                hulpGiekLengte = ConvertPostToDouble("txtHulpgiek");
                hoofdGiek_GiekHoek = ConvertPostToDouble("txtHoofdgiekHoek");
                hulpGiek_GiekHoek = ConvertPostToDouble("txtHulpgiekHoek");
                eigenMassaBallast = ConvertPostToDouble("txtLMB");
                toelaatbareBedrijfsLast = ConvertPostToDouble("txtBedrijfslast");
                lmbInWerking = ConvertPostToDouble("txtLMBIntreden");
                proefLast = ConvertPostToDouble("txtProeflast");
                totaleGiekLengte = ConvertPostToDouble("txtTotaleGiekLengte");

                try
                {
                    hijskabelAantalParten = Convert.ToInt32(GetPostVariable("txtAantalPartenHijskabel"));
                }
                catch
                {
                    Response.Write("<script>document.getElementById('txtAantalPartenHijskabel').style.borderColor = 'red';</script>");
                }

                zwenkHoek = GetPostVariable("txtRAZV");

                if (zwenkHoek == "R")
                {
                    zwenkHoek = "360";
                }
                else if (zwenkHoek == "A")
                {
                    zwenkHoek = "achter";
                }
                else if (zwenkHoek == "Z")
                {
                    zwenkHoek = "zij";
                }
                else if (zwenkHoek == "V")
                {
                    zwenkHoek = "voorsector";
                }
                else
                {
                    Response.Write("<script>alert('@0');</scipt>".Replace("@0", zwenkHoek));
                    Response.Write("<script>document.getElementById('txtRAZV').style.borderColor = 'red';</script>");
                }

                Response.Write(zwenkHoek);


                if (GetPostVariable("rbAkkoord") == "Ja")
                {
                    akkoord = true;
                }else
                {
                    Response.Write("<script>document.getElementById('rbAkkoord').style.color = 'red';</script>");
                    akkoord = false;
                }

                //try
                //{
                    string server = "localhost";
                    string database = "hijstesten";
                    string uid = "root";
                    string password = "";
                    string connectionString;
                    connectionString = "SERVER=" + server + ";" + "DATABASE=" +
                    database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

                    MySqlConnection con = new MySqlConnection(connectionString);

                    con.Open();

                    string query = "INSERT INTO `hijstesten 2`(Opdrachtennummer, Datum_Opgesteld, Hoofdgiek_Lengte, Mech_Sectie_Gieklengte, Hulpgiek_Lengte, Hoofdgiek_Giekhoek, Hulpgiek_Giekhoek, Hijskabel_Aantal_Parten, Zwenkhoek, Eigen_Massa_Ballast, Toelaatbare_Bedrijfslast, LMB_In_Werking, Proeflast, Akkoord) VALUES(@0, @1, @2, @3, @4, @5, @6, @7, @8, @9, @10, @11, @12, @13)";
                    Response.Write(query);
                    MySqlCommand cmd = new MySqlCommand(query, con);

                    cmd.Parameters.Add(new MySqlParameter("0", opdrachtNummer));
                    cmd.Parameters.Add(new MySqlParameter("1", datumOpgesteld));
                    cmd.Parameters.Add(new MySqlParameter("2", hoofdGiekLengte));
                    cmd.Parameters.Add(new MySqlParameter("3", mechSectieLengte));
                    cmd.Parameters.Add(new MySqlParameter("4", hulpGiekLengte));
                    cmd.Parameters.Add(new MySqlParameter("5", hoofdGiek_GiekHoek));
                    cmd.Parameters.Add(new MySqlParameter("6", hulpGiek_GiekHoek));
                    cmd.Parameters.Add(new MySqlParameter("7", hijskabelAantalParten));
                    cmd.Parameters.Add(new MySqlParameter("8", zwenkHoek));
                    cmd.Parameters.Add(new MySqlParameter("9", eigenMassaBallast));
                    cmd.Parameters.Add(new MySqlParameter("10", toelaatbareBedrijfsLast));
                    cmd.Parameters.Add(new MySqlParameter("11", lmbInWerking));
                    cmd.Parameters.Add(new MySqlParameter("12", proefLast));
                    cmd.Parameters.Add(new MySqlParameter("13", akkoord));

                    cmd.ExecuteNonQuery();

                    con.Close();
                /*} catch
                {

                }*/
            }
        }

        protected double? ConvertPostToDouble(String postId)
        {
            try
            {
                double returnValue = Convert.ToDouble(GetPostVariable(postId));
                return returnValue;
            }
            catch
            {
                Response.Write("<script>document.getElementById('@0').style.borderColor = 'red';</script>".Replace("@0", postId));
                return null;
            }
        }
    }
}