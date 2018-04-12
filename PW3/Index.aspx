<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="PW3.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Over De Rhein</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link href="CSS/Styles.css" rel="stylesheet" />
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top:-10px;">
          <a class="navbar-brand" href="#">
            <img src="Images/logo.png" width="100" alt="Logo Rhein" />
          </a>

          <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left:10px;">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="Index.aspx">Bestanden</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="http://www.google.nl">Info</a>
              </li>
            </ul>
          </div>
        </nav>

        <div class="container">
            <form method="post" action="Index.aspx" runat="server">
                <br />
                <div class="form-group">
                    <label for="txtOpdrachtnummer"><b>Opdrachtnummer: </b></label>
                    <input type="text" name="txtOpdrachtnummer" id="txtOpdrachtnummer" />
                </div>
                <div class="row">
                    <div class="col-2">
                        <div class="form-group">
                            <label class="form-check-label"><b>Opgesteld Op:</b></label>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld1" value="Banden" checked />
                              <label class="form-check-label" for="rbOpgesteld1">
                                Banden
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld2" value="Stempels" />
                              <label class="form-check-label" for="rbOpgesteld2">
                                Stempels
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld3" value="Rupsen" />
                              <label class="form-check-label" for="rbOpgesteld3">
                                Rupsen
                              </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="form-group">
                            <label style="margin-left: 70px;"><b>Gieklengte: </b></label><br />

                            <label style="margin-left: 76px;" for="txtHoofdgiek">Hoofdgiek: </label>
                            <input type="text" name="txtHoofdgiek" id="txtHoofdgiek" /> m

                            <label for="txtMechanischeSectie">Mechanische sectie: </label>
                            <input type="text" name="txtMechanischeSectie" id="txtMechanischeSectie" /> m

                            <br />

                            <label style="margin-left: 89px;" for="txtHulpgiek">Hulpgiek: </label>
                            <input type="text" name="txtHulpgiek" id="txtHulpgiek" /> m

                            <br />

                            <label style="margin-left: 22px;" for="txtTotaleGiekLengte">Totale gieklengte: </label>
                            <input type="text" name="txtTotaleGiekLengte" id="txtTotaleGiekLengte" /> m
                        </div>
                    </div>
                    <div class="col-5">
                        <div class ="form-group">
                            <label style="margin-left: 103px;"><b>Giekhoek: </b></label><br />

                            <label style="margin-left: 99px;" for="txtHoofdgiekHoek">Hoofdgiek: </label>
                            <input type="text" name="txtHoofdgiekHoek" id="txtHoofdgiekHoek" /> gr

                            <br />

                            <label style="margin-left: 112px;" for="txtHulpgiekHoek">Hulpgiek: </label>
                            <input type="text" name="txtHulpgiekHoek" id="txtHulpgiekHoek" /> gr

                            <br />

                            <label for="txtAantalPartenHijskabel">Aantal parten hijskabel: </label>
                            <input type="text" name="txtAantalPartenHijskabel" id="txtAantalPartenHijskabel" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-5">
                        <div class="form-group">
                            <label style="margin-left: 143px;"><b>Zwenkhoek: </b></label><br />

                            <input style="margin-left: 242px;" type="text" name="txtRAZV" id="txtRAZV" />
                            <small style="color: grey; margin-left: 242px; font-size: 0.6rem;">R= 360, A= achter-, Z= zij-, V= voorsector</small> <br /> <br />

                            <label for="txtLMB">Eigen massa Ballast LMB code: </label>
                            <input type="text" name="txtLMB" id="txtLMB" /> t

                            <br />

                            <label style="font-size: 0.835rem;" for="txtBedrijfslast">Toelaatbare bedrijfslast bij inwerking: </label>
                            <input type="text" name="txtBedrijfslast" id="txtBedrijfslast" />

                            <br />

                            <label style="margin-left: 46px;" for="txtLMBIntreden">LMB treedt in werking bij: </label>
                            <input type="text" name="txtLMBIntreden" id="txtLMBIntreden" />
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="form-group">
                            <label style="margin-left: 154px;"><b>Beproeving: </b></label><br />

                            <label style="margin-left: 175px;" for="txtProeflast">Proeflast: </label>
                            <input type="text" name="txtProeflast" id="txtProeflast" /> m

                            <br />

                            <label style="margin-left: 139px;" for="txtAfwijking">Afwijking in %: </label>
                            <input type="text" name="txtAfwijking" id="txtAfwijking" /> t
                        </div>
                        <div class="form-group">
                            <label style="margin-left: 175px;" class="form-check-label"><b>Akkoord:</b></label>
                            <div style="margin-left: 185px;" class="form-check">
                              <input class="form-check-input" type="radio" name="rbAkkoord" id="rbAkkoord1" value="Ja" checked />
                              <label class="form-check-label" for="rbAkkoord">
                                Ja
                              </label>
                            </div>
                            <div style="margin-left: 185px;" class="form-check">
                              <input class="form-check-input" type="radio" name="rbAkkoord" id="rbAkkoord2" value="Nee" />
                              <label class="form-check-label" for="rbAkkoord">
                                Nee
                              </label>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit">Exit</button>
            </form>
        </div>

        <footer>
            <div class="container-fluid" style="background-color: rgb(41,44,51); font-size: 1rem; position: fixed; left: 0; bottom: 0; width: 100%; text-align: center; padding-top: 10px; padding-bottom: 0px; color: rgb(62, 120, 138);">
                <p class="lead">Copyright &copy; <% Response.Write(DateTime.Now.Year); %>, Sjoerd de Bruin en Jasper Peijer. Alle rechten voorbehouden.</p>
            </div>
        </footer>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <% FormHandling(); %>
    </body>
</html>