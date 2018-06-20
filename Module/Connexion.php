<?php
require 'configPDO.php';

$message = '';
   
if (isset($_POST['Connexion']) && $_POST['Connexion'] == 'Connexion'){
    $Name = $_POST['login'];
    $Mdp = $_POST['mdp'];
    $options = [
        'cost' => 12,
    ];
    $_mdpHash = password_hash($Mdp, PASSWORD_BCRYPT, $options);
    $verif = array();
    $verif = connectUser($Name, $_mdpHash);
    
    if ($verif['Bool'] == true) {
        session_start();
        $_SESSION['login'] = $_POST['login'];
        $_SESSION['Nom'] = $verif['Utilisateur'];

        header('Location: http://localhost:8888/ServiceWeb/liste_medecin.php');
    }
    else {
        $message = '<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
                      <div class="modal-dialog " role="document">
                        <div class="modal-body alert alert-danger">
                          <button type="button" class="close" data-dismiss="modal" rel="modal:close" aria-label="Close">
                            <span aria-hidden="true" onclick="">&times;</span>
                          </button>
                          <p>L\'identifiant ou le mot de passe est incorrect !<br/> Veuillez réessayer.</p>
                        </div>
                      </div>
                     </div>';
    }
}

function connectUser($login,$mdp){
    $connexion = mysqli_connect("localhost", "root","root","service_web");
    $sqlRequest = "SELECT * FROM `utilisateur` WHERE `Utilisateur` = '".$login."'";
    $result = mysqli_query($connexion, $sqlRequest);
    $data = mysqli_fetch_row($result);
    $_mdp = $data[2];

    $dataR = array();
    $dataR['Bool'] = password_verify($_mdp, $mdp);
    $dataR['Utilisateur'] = $data[1];
    $dataR['Mail'] = $data[3];

    mysqli_free_result($result);
    mysqli_close($connexion);
    return $dataR;

}
