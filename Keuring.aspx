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
                <a class="nav-link" href="Index.aspx">Index</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Keuring.aspx">Keuring</a>
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
                    <div class="col-5">
                        <div class="form-group">
                            <label><b>Keuring: </b></label><br />

                            <label for="txtKeuringsdatum">Keuringsdatum: </label>
                            <input style="margin-left:30px;" type="text" name="txtKeuringsdatum" id="txtKeuringsdatum" placeholder="yyyy-mm-dd" />

                            <br />

                            <label for="txtUitgevoerd">Uitgevoerd door: </label>
                            <input style="margin-left:20px;" type="text" name="txtUitgevoerd" id="txtUitgevoerd" />

                            <br />

                            <label for="txtDeskundige">Deskundige: </label>
                            <input style="margin-left:55px;" type="text" name="txtDeskundige" id="txtDeskundige" />
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="form-group">
                            <label class="form-check-label"><b>Opstelling:</b></label>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpstelling" id="Railstellen" value="Railstellen" />
                              <label class="form-check-label" for="Railstellen">
                                Railstellen (Spoorbreedte/Wielbasis)
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpstelling" id="Rijdend" value="Rijdend" />
                              <label class="form-check-label" for="Rijdend">
                                Rijdend
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpstelling" id="Stationair" value="Stationair" />
                              <label class="form-check-label" for="Stationair">
                                Stationair
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpstelling" id="Ingietframe" value="Ingietframe" />
                              <label class="form-check-label" for="Ingietframe">
                                Ingietframe
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpstelling" id="Vrijstaand" value="Vrijstaand" />
                              <label class="form-check-label" for="Vrijstaand">
                                Vrijstaand (Kruisframe onderwagen zonder railstellen)
                              </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="form-group">
                            <label class="form-check-label"><b>Uitvoering toren:</b></label>
                            <div class="form-check">
                              <input class="form-check-input" type="checkbox" id="Uitvoering" />
                              <label class="form-check-label" for="Uitvoering">
                                Haakhoogte (.......m)
                              </label>
                              <input type="text" name="txtHaakhoogte" id="txtHaakhoogte" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-5">
                        <div class="form-group">
                            <label class="form-check-label"><b>Giek:</b></label>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbGiek" id="Telescoopgiek" value="Telescoopgiek" />
                              <label class="form-check-label" for="Railstellen">
                                Telescoopgiek (.........delen)
                              </label>
                              <input type="text" name="txtTelescoop" id="txtTelescoop" />
                            </div>
                            <div class="form-check" style="margin-top:5px;">
                              <input class="form-check-input" type="radio" name="rbGiek" id="Opbouwgiek" value="Opbouwgiek" />
                              <label class="form-check-label" for="Rijdend">
                                Opbouwgiek (......m)
                              </label>
                              <input type="text" name="txtOpbouwgiek" id="txtOpbouwgiek" style="margin-left:53px;" />
                            </div>
                            <div class="form-check" style="margin-top:5px;">
                              <input class="form-check-input" type="radio" name="rbGiek" id="Hulpgiek" value="Hulpgiek" />
                              <label class="form-check-label" for="Stationair">
                                Hulpgiek (......m)
                              </label>
                              <input type="text" name="txtHulpgiek" id="txtHulpgiek" style="margin-left:88px;" />
                            </div>
                            <div class="form-check" style="margin-top:5px;">
                              <input class="form-check-input" type="radio" name="rbGiek" id="Knikgiek" value="Knikgiek" />
                              <label class="form-check-label" for="Ingietframe">
                                Knikgiek
                              </label>
                              <input type="text" name="txtKnikgiek" id="txtKnikgiek" style="margin-left:150px;" />
                            </div>
                            <div class="form-check" style="margin-top:5px;">
                              <input class="form-check-input" type="radio" name="rbGiek" id="Monogiek" value="Monogiek" />
                              <label class="form-check-label" for="Vrijstaand">
                                Monogiek
                              </label>
                              <input type="text" name="txtMonogiek" id="txtMonogiek" style="margin-left:135px;" />
                            </div>
                            <div class="form-check" style="margin-top:5px;">
                              <input class="form-check-input" type="radio" name="rbGiek" id="Fly-Jib" value="Fly-Jib" />
                              <label class="form-check-label" for="Vrijstaand">
                                Fly-Jib (........delen)
                              </label>
                              <input type="text" name="txtFly-Jib" id="txtFly-Jib" style="margin-left:69px;" />
                            </div>
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="form-group">
                            <label class="form-check-label"><b>Uitvoering giek:</b></label>
                            <div class="form-check">
                              <input class="form-check-input" type="checkbox" id="Gieklengte" />
                              <label class="form-check-label" for="Gieklengte">
                                Gieklengte(......m)
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="checkbox" id="Topbaar" />
                              <label class="form-check-label" for="Topbaar">
                                Topbaar(.....gr)
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="checkbox" id="Loopkat" />
                              <label class="form-check-label" for="Loopkat">
                                Met loopkat
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="checkbox" id="Verstelbare" />
                              <label class="form-check-label" for="Verstelbare">
                                Verstelbare giek
                              </label>
                            </div>
                            <br />
                            <label class="form-check-label"><b>Stempels:</b></label>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbStempels" id="Stempels" value="Stempels" />
                              <label class="form-check-label" for="Stempels">
                                Stempels
                              </label>
                            </div>
                            <div class="form-check" style="margin-top:5px;">
                              <input class="form-check-input" type="radio" name="rbStempels" id="Dozerblad" value="Dozerblad" />
                              <label class="form-check-label" for="Dozerblad">
                                Dozerblad
                              </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-5">
                        <label class="form-check-label"><b>Tekortkomingen A of B:</b></label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="rbTekort" id="Ja" value="Ja" />
                            <label class="form-check-label" for="Ja">
                            Ja
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="rbTekort" id="Nee" value="Nee" />
                            <label class="form-check-label" for="Nee">
                            Nee
                            </label>
                        </div>
                    </div>
                    <div class="col-5">
                        <label class="form-check-label"><b>Afmelden voor:</b></label>
                        <input type="text" name="txtAfmelden" id="txtAfmelden" placeholder="yyyy-mm-dd" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <label class="form-check-label"><b>Directe voorzieningen noodzakelijk voordat de kraan weer in gebruik wordt gesteld, hierbij is een herkeuring vereist m.b.t (nummers uit checklist)</b></label>
                        <div class="input-group">
                          <textarea class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="col-12">
                        <label class="form-check-label"><b>Toelichting</b></label>
                        <div class="input-group">
                          <textarea class="form-control"></textarea>
                        </div>
                    </div>
                </div>
                <br />
                <button type="submit">Exit</button>
            </form>
        </div>
        <br />
        <footer>
            <div class="container-fluid" style="background-color: rgb(41,44,51); font-size: 1rem; height:56px; width: 100%; text-align: center; padding-top: 10px; padding-bottom: 0px; color: rgb(62, 120, 138);">
                <p class="lead">Copyright &copy; <% Response.Write(DateTime.Now.Year); %>, Sjoerd de Bruin en Jasper Peijer. Alle rechten voorbehouden.</p>
            </div>
        </footer>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    </body>
</html>