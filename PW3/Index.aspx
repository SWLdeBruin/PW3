<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="PW3.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Over De Rhein</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link href="CSS/Styles.css" rel="stylesheet" />
    </head>

    <body>
        <% RenderSjoerd(); %>

        <div class="container">
            <form method="post" action="Index.aspx" runat="server">
                <br />
                <div class="form-group">
                    <label for="txtOpdrachtnummer">Opdrachtnummer</label>
                    <input type="number" name="txtOpdrachtnummer" id="txtOpdrachtnummer" />
                </div>
                <div class="row">
                    <div class="col-3">
                        <div class="form-group">
                            <label class="form-check-label">Opgesteld Op:</label>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld1" value="Banden" checked />
                              <label class="form-check-label" for="exampleRadios1">
                                Banden
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld2" value="Stempels" />
                              <label class="form-check-label" for="exampleRadios2">
                                Stempels
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld3" value="Rupsen" />
                              <label class="form-check-label" for="exampleRadios3">
                                Rupsen
                              </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="form-group">
                            <label class="form-check-label">Opgesteld Op:</label>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld1" value="Banden" checked />
                              <label class="form-check-label" for="exampleRadios1">
                                Banden
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld2" value="Stempels" />
                              <label class="form-check-label" for="exampleRadios2">
                                Stempels
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld3" value="Rupsen" />
                              <label class="form-check-label" for="exampleRadios3">
                                Rupsen
                              </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="form-group">
                            <label class="form-check-label">Opgesteld Op:</label>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld1" value="Banden" checked />
                              <label class="form-check-label" for="exampleRadios1">
                                Banden
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld2" value="Stempels" />
                              <label class="form-check-label" for="exampleRadios2">
                                Stempels
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="rbOpgesteld" id="rbOpgesteld3" value="Rupsen" />
                              <label class="form-check-label" for="exampleRadios3">
                                Rupsen
                              </label>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit">Exit</button>
            </form>

            <% WriteResults(); %>
        </div>

        <% RenderFooter(); %>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    </body>
</html>