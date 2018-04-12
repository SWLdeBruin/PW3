<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kabels.aspx.cs" Inherits="PW3.Kabels" %>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="CSS/Styles.css">
	<title>
		Formulieren
	</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top:-10px;">
        <a class="navbar-brand" href="#">
        <img src="Images/logo.png" width="100" alt="Logo Rhein" />
        </a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left:10px;">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
            <a class="nav-link" href="Index.aspx">Opdracht</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="http://www.google.nl">Overzicht</a>
            </li>
        </ul>
        </div>
    </nav>

	<div class="content">
		<form action="php/opdracht_action.php">
			<table>
				<tr>
					<th colspan="8"><h2>Opdracht Formulier</h2></th>
				</tr>
				<tr>
					<th>Werkinstructie</th>
					<th>Datum uitvoering</th>
					<th>Kabel leverancier</th>
					<th>Waarnemingen</th>
					<th>Handtekening</th>
					<th>Aantal bedrijfsuren</th>
					<th>Redenen aflegging</th>
					<th>Actie</th>
				</tr>
				<tr>
					<td><input runat="server" type="text" name="werkinstructie" placeholder="werkinstructie" required></td>
					<td><input runat="server" type="datetime-local" name="datum_uitvoering" placeholder="datum uitvoering" value="<?php $date = new DateTime(); echo $date->format('Y-m-d\TH:i');?>" required></td>
					<td><input runat="server" type="text" name="kabel_leverancier" placeholder="Kabel leverancier" required></td>
					<td><input runat="server" type="text" name="waarnemingen" placeholder="waarnemingen" required></td>
					<td><input runat="server" type="text" name="handtekening" placeholder="handtekening" required></td>
					<td><input runat="server" type="number" name="aantal_bedrijfsuren" placeholder="bedrijfsuren" min="1" value="1" required></td>
					<td><input runat="server" type="text" name="afleg_redenen" placeholder="redenen aflegging" required></td>
					<td><input runat="server" type="submit" name="opslaan" value="opslaan"></td>
				</tr>
			</table>
		</form>
	</div>

	<footer>
        <div class="container-fluid" style="background-color: rgb(41,44,51); font-size: 1rem; position: fixed; left: 0; bottom: 0; width: 100%; text-align: center; padding-top: 10px; padding-bottom: 0px; color: rgb(62, 120, 138);">
            <p class="lead">Copyright &copy; <% Response.Write(DateTime.Now.Year); %>, Sjoerd de Bruin en Jasper Peijer. Alle rechten voorbehouden.</p>
        </div>
    </footer>

</body>
</html>

