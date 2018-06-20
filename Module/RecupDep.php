<?php

require_once (__DIR__.'/configPDO.php');

try{
	$recupdep = $db->prepare('SELECT * FROM Departement;');
	$recupdep->execute();
	$recupdep->setFetchMode(PDO::FETCH_ASSOC);

	$annuaireDep = array();

	while($testdep = $recupdep->fetch()) {

		$detailDep = array("CP"=>$testdep['departement_code'], "Nom"=>$testdep['departement_nom']);

		array_push($annuaireDep, $detailDep);
	}

	$recupdep->closeCursor();

	echo json_encode($annuaireDep, JSON_NUMERIC_CHECK);
}
catch(PDOException $e){
    echo $e->getMessage();
	}
?>


