 <!DOCTYPE html>






 <!-- test -->
<html lang="fr-FR">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Formulaire d'inscription bancaire</title>
</head>

<body>
	<?php
		function daFunct() {
			if(isset($_GET['envoyer'])){

				if($_GET['email'] != "hello"){
					echo "erreur de mail";
				}
				else if(strlen($_GET['password']) < 12){
					echo "mot de passe trop court";
				}
				else {
					echo "<p>"
						echo "<span> votre Email: <strong>" . $_GET['mail'] . "</strong><br>";
						echo "<span> Votre mot de passe: <strong>" . $_GET['password'] . "		</strong><br>";
					echo "</p>";
				}

			}
		}
	?>

<div id="formblock">

	<div class="formulaire">

		<form action="index.php" method="get">
			<div><input type="text" name="email" placeholder="email"></div>
			<div><input type="password" name="password" placeholder="mot de passe"></div>
			<div><input type="submit" name="envoyer"></div>
		</form>
		
	</div>

</div>

</body>

</html> 