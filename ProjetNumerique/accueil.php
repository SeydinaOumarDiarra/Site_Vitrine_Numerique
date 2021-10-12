<?php 
include './bd.php';

// On détermine sur quelle page on se trouve
if(isset($_GET['page']) && !empty($_GET['page'])){

    $currentPage = (int) strip_tags($_GET['page']);
}else{
    $currentPage = 1;
}


// On détermine le nombre total d'articles
 $sql = "SELECT COUNT(*) AS nb_personnages FROM personnages";

 // On prépare la requête
$query = $conn->prepare($sql);

// On exécute
$query->execute();

// On récupère le nombre d'articles
$result = $query->fetch();


$nbPersonnages = (int) $result['nb_personnages'];



// On détermine le nombre d'articles par page
$parPage = 6;

// On calcule le nombre de pages total
$pages = ceil($nbPersonnages / $parPage);

// Calcul du 1er article de la page
$premier = ($currentPage * $parPage) - $parPage;

    $req = "SELECT * FROM personnages LIMIT :premier, :parpage;";

    // On prépare la requête
  $query = $conn->prepare($req);

 

$query->bindValue(':premier', $premier, PDO::PARAM_INT);
$query->bindValue(':parpage', $parPage, PDO::PARAM_INT);


// On exécute
$query->execute();

// On récupère les valeurs dans un tableau associatif
$data = $query->fetchAll(PDO::FETCH_ASSOC);
//var_dump($data); exit();

?>






<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>NUM-UNIVERS</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <?php include './link.php'; ?>
  <link rel="stylesheet" href="assets/css/pagination.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
<?php include './header.php'; ?>

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container" data-aos="fade-up">
      <h1>Bienvenue sur Num-Univers</h1>
      <h2>L'univers du numerique, la plus belle des signatures numérique</h2>
      <a href="#team" class="btn-get-started scrollto"><i class="bx bx-chevrons-down"></i></a>
    </div>
  </section><!-- End Hero -->

  <main id="main">



    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
          <h2>Personnages</h2>
          <p>Retrouvez quelques grandes personnalités qui ont oeuvré pour le developpement du numérique.</p>
        </div>

        <div class="row">
            <?php
                foreach($data as $data){
            ?>

          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="fade-up">
              <div class="pic">
                <a href="detailPersonnage.php?id=<?= $data['id']?>">
                  <img src="./upload/<?= $data['nom_image']?>" class="img-fluid" alt="" style="width:300px;height:300px;">
                </a>
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
          
          <?php
            } 
          ?>
                  <nav style="margin-left: auto; margin-right: auto; width : 17em"><br><br><br><br>
                    <ul class="pagination" >
                        <!-- Lien vers la page précédente (désactivé si on se trouve sur la 1ère page) -->
                        <li class="page-item <?= ($currentPage == 1) ? "disabled" : "" ?>">
                            <a href="./accueil.php?page=<?= $currentPage - 1 ?>" class="page-link">Précédente</a>
                        </li>
                        <?php for($page = 1; $page <= $pages; $page++): ?>
                          <!-- Lien vers chacune des pages (activé si on se trouve sur la page correspondante) -->
                          <li class="page-item <?= ($currentPage == $page) ? "active" : "" ?>">
                                <a href="./accueil.php?page=<?= $page ?>" class="page-link"><?= $page ?></a>
                            </li>
                        <?php endfor ?>
                          <!-- Lien vers la page suivante (désactivé si on se trouve sur la dernière page) -->
                          <li class="page-item <?= ($currentPage == $pages) ? "disabled" : "" ?>">
                            <a href="./accueil.php?page=<?= $currentPage + 1 ?>" class="page-link">Suivante</a>
                        </li>
                    </ul>
                </nav>
        </div>

      </div>
    </section><!-- End Team Section -->


  </main><!-- End #main -->

  <?php include './js.php'; ?>

</body>
</html>


