<?php
 
 require_once (__DIR__.'/configPDO.php');


try {
	$recupdata = $db->prepare('SELECT * FROM medecin;');
	$recupdata->execute();
	$recupdata->setFetchMode(PDO::FETCH_ASSOC);

	$annuaireData = array();

	while($testedata = $recupdata->fetch()) {

		$detailData= array("Nom"=>$testedata['Nom'], "Prenom"=>$testedata['Prenom'], "Adresse"=> $testedata['Adresse'], "Tel"=>$testedata['Tel'], "Specialite"=>$testedata['Specialite'], "Departement"=>$testedata['Departement']);
		 
		 array_push($annuaireData, $detailData);
            
        }    

        $recupdata->closeCursor();
       
        echo json_encode($annuaireData, JSON_NUMERIC_CHECK);
}
catch(PDOException $e){
    echo $e->getMessage();
	}
?>