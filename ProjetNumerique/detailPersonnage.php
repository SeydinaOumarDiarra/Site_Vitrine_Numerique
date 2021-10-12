<?php
require_once('bd.php');

if(isset($_GET['id']) && !empty($_GET['id'])){
    $id = strip_tags($_GET['id']);
    $sql = 'SELECT * FROM personnages WHERE id=:id';

    // On prépare la requête
    $query = $conn->prepare($sql);

    // On attache les valeurs
    $query->bindValue(':id', $id, PDO::PARAM_INT);

    // On exécute la requête
    $query->execute();

    // On stocke le résultat dans un tableau associatif
    $data = $query->fetch();
}
?>


<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personnage : <?= $data['nom_complet'] ?></title>
    <?php include './link.php'; ?>
</head>
<body>

<?php include './header.php'; ?>


  <main id="main">



    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
          <h2>Personnage: <?= $data['nom_complet'] ?></h2>
        </div>

        <div class="row">

          <div class="col-lg-6 col-md-6">
            <div class="member" data-aos="fade-up">
              <div class="pic">
                  <img src="./upload/<?= $data['nom_image']?>" class="img-fluid" alt="" style="width:300px;height:300px;">
                </div>
              <div class="member-info">
                <h4><?= $data['nom_complet'] ?></h4>
                <span><?= $data['titre'] ?></span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
          <p style="text-align: justify; text-justify: inter-word;"><?= $data['historique'] ?></p>
          </div>

        </div>

      </div>
    </section><!-- End Team Section -->


  </main><!-- End #main -->
  <?php include './js.php'; ?>

</body>
</html>