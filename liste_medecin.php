<?php
   require_once (__DIR__.'/Module/configPDO.php');
   
   session_start();
   if (empty($_SESSION)){
       header('Location: http://localhost:8888/ServiceWeb/');
   }
?>
<!DOCTYPE html>
<html lang="fr">
   <head>
      <meta charset="utf-8">
      <title>GSB - ServiceWeb - liste des médecins</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="img/favicon.ico">
      <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
      <link href="css/style.css" rel="stylesheet">
      <script src="./js/jquery-3.3.1.js"></script>
      <script type="text/javascript" src="./js/listeMedecin.js"></script>
   </head>
   <body>
      <nav class="navbar navbar-light bg-faded">
         <a class="navbar-brand" href="liste_medecin.php">
         <img class="logo-page" src="img/logo.png" alt="GSB">
         </a>
         <p class="serv-web">ServiceWeb</p>
         <button  type="button" class="btn btn-primary" name="Deconnexion" value="Deconnexion" ><a id="disconnect" href="Module/Disconnect.php">Déconnexion</a></button>
         </div>
      </nav>
      <div class="container">
         <div class="row">
            <div class="white-zone2">
               <h1 class="title-page">Liste des médecins</h1>
               <form style="margin-top: 15px; margin-bottom: 2%; margin-left: 20px; float: left;">
                  <select name="departement" size="1" placeholder="Departement" id="departement">
                  </select>
                  <!--
                     <div class="input-group">
                        <input type="text" name="search" class="form-control" style="width: 210px;" placeholder="Rechercher un médecin...">
                        <span class="input-group-btn">
                        <button class="btn btn-secondary" name="ok" type="submit" style="margin-top: 17%;"><img class="fas fa-search" src="img/Search Icon White.png" style="width: 15px"></img></button>
                        </span>
                     </div>
                       -->
               </form>
               <div class="table-responsive" id="tableau">
               </div>
            </div>
         </div>
      </div>
      <script defer src="js/fontawesome/svg-with-js/js/fontawesome-all.js"></script>
      <script type="text/javascript" src="plugins/jquery.min.js"></script>
      <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
   </body>
</html>
<script>
   loadDepartement();
   loadData();
</script>