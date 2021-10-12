<!DOCTYPE html>
<html lang="fr">
<head>
  <title>ADMIN_NUMERIQUE</title>
   <meta charset="utf-8">
   <?php include './link.php'; ?>
</head>
<body> 
<main id="main">
<section id="contact" class="contact section-bg">
  <div class="row">
      <div class="col-lg-2">

      </div>
            <div class="col-lg-8">
              <h1 class="text-center">Formulaire d'ajout d'un personnage</h1><br>
              <!-- <p class="text-center"> </p> -->
              <form  method="post" role="form"  enctype="multipart/form-data">
                <div class="row">
                  <div class="col-md-6 form-group">
                    <input type="text" name="nom" class="form-control" id="nom" placeholder="Nom complet du personnage" required>
                  </div>
                  <div class="col-md-6 form-group">
                    <input type="text" name="titre" class="form-control" id="titre" placeholder="Poste du personnage" required>
                  </div>
                </div>
                <div class="form-group mt-3">
                  <label for="photo" style="font-size: 20px"> Photo</label>
                  <input type="file" class="form-control" id ="photo" name="photo"  required>
                </div>
                <div class="form-group mt-3">
                  <textarea class="form-control" name="historique" rows="5" placeholder="Historique du perssonnage" required></textarea>
                </div><br>
                <div class="text-center" > <input type="submit" name="submit" value="AJOUTER" style="background-color: blue; color: white; font-size: 30px"></div>
                <!-- <input type="submit" name="submit" value="AJOUTER"> -->
              </form>
            </div>
            <div class="col-lg-2"></div>
      </div>
</section>
</main>

    <?php include './js.php'; ?>
</body>
</html>


<?php

include './bd.php';

// var_dump($_POST);
// var_dump($_FILES);

$message='';
if(isset($_FILES['photo'])){
    $tmpName = $_FILES['photo']['tmp_name'];
    $name = $_FILES['photo']['name'];
    $size = $_FILES['photo']['size'];
    $error = $_FILES['photo']['error'];

   

    //on  recupère l'extension du fichier uploadé
    $tabExtension = explode('.', $name);

    //on met les extensions du fichier en miniscule
    $extension = strtolower(end($tabExtension));

    //Tableau des extensions que l'on accepte
    $extensions = ['jpg', 'png', 'jpeg', 'gif'];

    //Taille max que l'on accepte
    $maxSize = 400000;

    if(in_array($extension, $extensions) && $size <= $maxSize && $error == 0){

        //rendre le nom d'un fichier unique
        $uniqueName = uniqid('', true);

        //uniqid génère quelque chose comme ca : 5f586bf96dcd38.73540086
        $file = $uniqueName.".".$extension;

        //on upload le fichier vers notre dossier upload
        move_uploaded_file($tmpName, './upload/'.$file);

        // insertion des données dans la base de données
       // $req = $db->prepare('INSERT INTO personnages (nom_complet, nom_image, historique) VALUES (?, ?, ?)');

        $req = "INSERT INTO personnages(nom_complet,titre,nom_image,historique) 
                VALUES(:nom_complet, :titre, :nom_image, :historique)";

        $query = $conn->prepare($req);

        $datas = array(":nom_complet"=>$_POST["nom"], ":titre"=>$_POST["titre"], ":nom_image"=>$file, "historique"=>$_POST["historique"]);
        $query->execute($datas);

        $message= "Personnage enregistré";
    }
    else{
        $message= "Une erreur est survenue";
    }
}
             
?>
