<?php
$PARAM_hote='localhost'; // le chemin vers le serveur
$PARAM_port='88';
$PARAM_nom_bd='service_web'; // le nom de votre base de données
$PARAM_utilisateur='root'; // nom d'utilisateur pour se connecter
$PARAM_mot_passe='root'; // mot de passe de l'utilisateur pour se connecter

try{
	$db = new PDO('mysql:host=localhost;dbname=service_web',$PARAM_utilisateur, $PARAM_mot_passe,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
	$db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e)
{
	
	echo 'Erreur';
	exit;
}
?>