-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 12:25
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `numeric_history.db`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(30) NOT NULL,
  `nom_image` varchar(255) DEFAULT NULL,
  `historique` text DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom_complet`, `nom_image`, `historique`, `titre`) VALUES
(3, 'Bill Gates', '6161aea555f2e9.55169902.jpg', 'Rappelez-vous l’histoire de l’Intel 4004 qui était devenu le favori des lobbyistes (pièce du circuit intégré). Un de ses descendants était le processeur Intel 8088. Au même moment, vers 1980, IBM spécialiste des gros ordinateurs d’entreprise avait un PDG visionnaire qui voulait entrer sur le marché de l’ordinateur personnel, le personnel computer ou PC. Comprenant que la culture de son entreprise ne l’aiderait pas il créa une unité quasiment autonome chargée de développer le PC d’IBM, l’IBM PC. D’habitude, IBM concevait ses ordinateurs de A à Z, du processeur aux logiciels, mais là, pour aller plus vite, et peut-être aussi pour éviter de retomber dans une action anti-trust dont il sortait à peine, IBM fit le choix de sous-traiter le processeur et le logiciel, et de ne spécifier que la façon de les faire fonctionner ensemble. Le processeur échut à Intel, et le logiciel à Microsoft, une toute petite start-up dirigée par un inconnu, Bill Gates. On peut dire que IBM leur avait offert un futur doré sur un plateau d’argent.', 'PDG de Microsoft Windows'),
(4, 'Donald Knuth', '61640401373225.60315315.jpg', 'Né en 1938 aux Etats-Unis, Donald Knuth fait partie des pionniers de l’informatique. Il a notamment beaucoup travaillé sur l’étude des algorithmes et de leur comportement. Dans son livre le plus célèbre, the Art of Computer Programming, il montre comment prouver qu’un algorithme ne contient pas d’erreur de conception.\r\nDonald Knuth est aussi l’auteur du programme TeX, qui permet de faciliter la mise en page de textes scientifiques et est aujourd’hui utilisé dans la plupart des laboratoires.', 'Auteur du programme TeX'),
(6, 'Federico Faggin', '616407001d89e9.66927492.jpg', 'Physicien italien ayant émigré aux Etats-Unis à la fin des années 60, il a mis au point le premier microprocesseur commercialisé par l’entreprise américaine Intel en 1971, le Intel 4004.\r\nLe microprocesseur est un composant électronique qui permet aux ordinateurs actuels d’exécuter un programme et de traiter des données. Avant son invention, les ordinateurs devaient être beaucoup plus gros (de la taille d’une pièce de maison) pour pouvoir fonctionner. C’est cette invention qui a ouvert la voie à la diffusion large de l’informatique telle qu’on la connait aujourd’hui, en particulier dans les maisons et les entreprises.', 'Inventeur du microprocesseur Intel'),
(7, 'Tim Berners Lee', '61640842694769.69187883.jpg', 'Si vous surfez sur le web avec votre ordinateur, c’est grâce à Tim Berners Lee ! Tout commence au Conseil Européen pour la Recherche Nucléaire : le CERN. Le chercheur propose de travailler sur l’amélioration du partage de toutes les informations sur un seul réseau, le but étant de faciliter la communication instantanée autour des travaux des physiciens et leur permettre d’être en permanence en contact entre eux, depuis leurs pays respectifs ou au sein du CERN à Genève.\r\nAvec ses recherches, Tim Berners Lee tente de réaliser ce vieux rêve de créer un réseau dynamique, constitué par un ensemble de documents informatiques liés entre eux. C’est ce que Ted Nelson aura appelé en 1965 l’Hypertexte, un texte avec des liens permettant facilement d’aller d’une partie à une autre, d’un mot à sa définition, d’un paragraphe à une note, d’une section à une autre. Le Web de Tim Berners Lee c’est tout ça en très simplifié, mais à l’échelle planétaire.\r\nC’est en mai 1990 qu’il baptise son réseau, World Wide Web, la Toile qui couvre le monde. Une équipe va ensuite se former autour de lui pour améliorer cette proposition et développer les trois principales technologies du Web : les adresses web, le protocole de transfert hypertexte (le http), et le langage de balisage hypertexte (le HTML). Les premiers navigateurs étaient trop puissants pour que tous les ordinateurs les supportent, mais peu à peu les interfaces ont été améliorées. Et le Web scientifique s’est peu à peu ouvert pour devenir l’outil grand-public que nous connaissons aujourd’hui.', 'Inventeur de world wide web'),
(8, 'Alioune N\'DIAYE', '61640a80092078.21833218.jpg', 'Alioune a intégré la Sonatel, en 1988, sur des fonctions d’audit et de contrôle de gestion avant d’en devenir le Directeur financier. En 2002, nommé Directeur d’Ikatel au Mali, il participera à la création d’Orange Mali. Dix ans plus tard, de retour à la Sonatel, il devient Directeur général ainsi que Président du conseil d’administration de Sonatel Mobiles. En 2018, il est nommé Directeur général d’Orange MEA, devenant ainsi le premier africain à occuper ce poste clé au sein de la société.', 'Directeur général d’Orange MEA'),
(9, 'Lacina Koné', '61640ae24cc4c1.39927949.png', 'Lacina Koné est le Directeur Général de Smart Africa depuis Février 2019. Avant ça, il a été le Conseiller du Premier Ministre chargé de l’économie numérique et la réforme informatique entre 2017-2018. Lacina Koné est un professionnel de l’industrie des TICs avec plus de 25 ans d’expérience dans les secteurs des télécommunications, satellite et de système de transport intelligent. Il possède un MBA de l’Université de George Washington.', 'Directeur Général de Smart Africa'),
(10, 'George Boole', '61640c8bc81206.53044294.jpg', 'L’Angleterre du 19e siècle, et surtout les universités victoriennes ont fourni un certain nombre de mathématiciens précurseurs qui ont préparé le monde numérique d’aujourd’hui.\r\nParmi eux, George Boole, qui a inventé l’algèbre binaire en tentant de rattacher le raisonnement logique aux mathématiques, et non plus à la philosophie. Il voulait ainsi traduire des concepts en formules, leur appliquer certaines lois et ensuite retraduire le résultat en termes logiques. Ainsi, son algèbre n’accepte que deux valeurs numériques : 0 et 1. 1 désigne une proposition vraie, et 0 une proposition fausse. Cette algèbre repose sur trois lois : ET, OU, NON.\r\nCes travaux furent d’une grande importance théorique au 19e siècle. Ils furent aussi d’une grande importance pratique un siècle plus tard avec le développement de l’informatique. Dans de nombreux langages de programmation, le terme booléen désigne un type de données ne pouvant prendre que deux valeurs. Et chaque micro-ordinateur fonctionne aujourd’hui à l’aide d’éléments électroniques réalisant les fonctions ET, OU ou NON, mais aussi NOR ou NAND…', 'Inventeur l’algèbre binaire'),
(11, 'Jacqueline KONATE', '61640f29c6c151.23309403.jpg', 'A 36 ans, Dr  Sogoba Jacqueline Konaté est l’une des ambassadrices de l’informatique au Mali. Son doctorat en poche depuis 10 ans, l’enseignante-chercheure est à l’origine, en 2014, d’un système informatique de gestion des dossiers d’inscriptions, le payement des inscriptions et les réclamations de note à la Faculté des Sciences et Techniques au Mali (FST).\r\nEnseignante à la FST depuis 2012,  Dr Jacqueline Konaté a encadré plus de 30 étudiants en Licence, 8 étudiants en Master. Elle est aussi auteure de nombreuses publications scientifiques notamment: «Federation of Services from Autonomous Domains with Heterogeneous Acess Control Models, 18th International Information Security South Africa  Conference ,Johannesborg ,South Africa, August 14-15,2019.  Roulant les « R » en s’exprimant en français, les lèvres toujours, rouges de Jacqueline laissent entrevoir ses dents de bonheur. Dr Jacqueline Konaté, en dépit de son âge relativement jeune, a un CV riche. Développeur de contenu pour l’Université Virtuelle Africaine, elle est aussi membre du Bureau du Comité Technique Spécialiste en Sciences et Techniques de l’Ingénieur (CTS-STI) du CAMES.', 'Enseignante-chercheure à la FST'),
(12, 'Ada Lovelace', '6164107ec02ad9.75682734.jpg', 'Le père d’Ada Lovelace, le poète anglais Lord Byron, n’étant fait pour être ni un mari fidèle ni un père, ce fut sa mère qui assura son éducation, en la destinant à être mathématicienne ou scientifique, ce qui est inhabituel pour une femme à cette époque. Sa mère voulut peut-être aussi l’éloigner de toute tentation poétique pour lui éviter les errements de son père…\r\nEn 1832, alors qu’elle n’a que 17 ans, elle rencontre Charles Babbage, qui tente de construire une machine à calcul : la machine analytique. Ada Lovelace voit assez rapidement le potentiel d’une telle machine capable de réaliser n’importe quel calcul, ce qu’on connaît aujourd’hui comme un ordinateur, et en décrit l’impact avec un siècle d’avance ! Elle rédige une note dans laquelle elle décrit comment réaliser un calcul mathématique complexe avec la machine, décrivant les étapes à réaliser, sous la forme de position des rouages de la machine et comment lui permettre d’arriver à un résultat donné. C’est elle qui a en premier formalisé le principe de programmation, ce qui fait d’elle la première codeuse au monde !\r\nEn perdant Ada Lovelace, qui n’a pas survécu à un cancer, la machine analytique a probablement perdu sa plus belle chance de voir le jour et, ainsi, de devenir le premier calculateur mécanique avec un siècle d’avance.', 'Première codeuse au monde'),
(15, 'Alan Turing', '6164593811d729.65430688.jpg', 'Alan Turing est un personnage que l’on reconnaît comme un des pères de l’informatique moderne. Il a proposé en 1936, avant l’apparition des premiers ordinateurs, une formalisation de la notion de calcul et de ses limites intrinsèques, toujours pertinente 80 ans après ! Cette formalisation s’est faite au travers d’une machine abstraite, capable de réaliser n’importe quel calcul. Une machine à instructions programmable, dont tous les ordinateurs d’aujourd’hui ont hérité. Mais il fut aussi un homme de son siècle, gravement troublé par la Seconde Guerre Mondiale. Les communications des sous-marins allemands étaient codées par une machine : la machine Enigma, réputée incraquable. Or Alan Turing parvint à en percer la clef, et inventa une autre machine qui permit de décoder jusqu’à 120 messages par heure. On considère aujourd’hui que cet exploit, longtemps resté secret défense, place Alan Turing comme un acteur essentiel de la débâcle des nazis.\r\nEnfin, Alan Turing a été le témoin et l’acteur du développement des tous premiers ordinateurs, environ 10 ans après leur formalisation. Il déclara être souvent surpris des capacités réelles de ces machines pourtant encore très rudimentaires. Cette expérience lui a permis de formaliser une autre intuition : des mécanismes pourraient un jour se montrer aussi intelligents que l’Homme, en reproduisant les mêmes résultats que l’activité mentale de l’homme. Cette idée fait de lui le père de l’intelligence artificielle. Il a imaginé un test qui désormais porte son nom et qui pourrait permettre de déterminer si une machine réussit à se faire passer pour un humain. Aujourd’hui, les ordinateurs, mêmes les plus ordinaires, nous dépassent sur beaucoup de compétences, mais aucun n’a pu passer le test ! Cependant le risque qu’un ordinateur tente de se faire passer pour un humain est réel, et les CAPTCHA qui protègent certains sites web sont justement là pour tenter de s’en prémunir.\r\nEn attendant, Alan Turing et ses machines se trouvent aujourd’hui dans notre quotidien, dans nos maisons et dans nos poches !\r\n', 'Inventeur de machine Turing'),
(16, 'Margaret Hamilton', '61645ac84aee39.06293220.jpg', 'Margaret Hamilton s’est très tôt intéressée à l’informatique et aux mathématiques. Après ses études elle devient programmeuse au sein de plusieurs laboratoires, ce qui la conduit finalement à travailler avec la NASA pour le projet Apollo visant à envoyer des hommes sur la Lune. C’est Margaret Hamilton qui était en charge de la conception de tous les logiciels embarqués dans la fusée, elle en écrira d’ailleurs la majorité du code (sur la photo ci-dessous on la voit poser à coté de l’ensemble du code écrit pour la mission).\r\nMargaret Hamilton a révolutionné l’ingénierie logicielle et la conception de programmes complexes. En effet il est extrêmement difficile de construire des logiciels constitués de plusieurs parties imbriquées, ce qui est le cas des fusées lunaires (le radar, les communications, la gestion des informations fournies par les capteurs, etc. fonctionnent tous en même temps). De plus tous les logiciels comportent forcément quelques bugs non détectés qui peuvent potentiellement poser des problèmes graves s’ils se déclenchent. Margaret Hamilton a pour cela inventé de nouvelles méthodes permettant de limiter la gravité des défaillances informatiques, en laissant la possibilité soit pour les humains de reprendre le contrôle, soit pour l’ordinateur de détecter et d’abandonner uniquement les procédures défectueuses. Ces innovations ont d’ailleurs permis de sauver la mission lorsque le radar du module lunaire a saturé la mémoire de l’ordinateur de bord.\r\nAinsi sans les nouvelles techniques de conception logicielle introduites par Margaret Hamilton, Neil Armstrong n’aurait sans doute pas pu poser le pied sur la lune le 20 juillet 1969. Et les programmes complexes comporteraient trop de failles pour être utilisables en pratiques.\r\n', 'CEO MIT'),
(17, 'Frances Allen', '61645bd81c7118.37217717.jpg', 'L’informaticienne américaine Frances Allen est en 2008 la première femme à obtenir le Prix Turing, l’équivalent pour les informaticiens du Prix Nobel, notamment pour ses travaux sur la compilation. L’opération de compilation d’une suite de 0 et de 1 représentant les instructions écrites par un programmeur en une autre suite de 0 et de 1 représentant des instructions correspondantes en langage machine est une opération complexe. C’est d’autant plus vrai lorsque le programme est long.\r\nFrances Allen a travaillé dès le début des années 70 sur l’optimisation de la compilation. Son but était de faire en sorte que le résultat d’une compilation donne des instructions en langage machine que l’ordinateur puisse exécuter le plus rapidement possible. Cela permet de soulager les humains qui peuvent ainsi écrire des programmes plus facilement compréhensibles en sachant que le compilateur se chargera de certaines opérations complexes permettant de gagner du temps lorsque le programme est lancé.\r\nCes diverses optimisations automatiques sont aujourd’hui indispensables au bon fonctionnement de la multitude de programmes qui sont exécutés chaque jour autour de nous.\r\n', 'Chercheuse Informaticienne'),
(18, 'Claude Shannon', '61645d4fabf9b2.82771750.jpg', 'Claude Shannon est connu non seulement pour ses travaux dans les télécommunications, mais aussi pour l\'étendue et l\'originalité de ses hobbies, comme la jonglerie, la pratique du monocycle et l\'invention de machines farfelues : une souris mécanique sachant trouver son chemin dans un labyrinthe, un robot jongleur, un joueur d\'échecs (roi tour contre roi), etc.\r\n\r\nL\'un de ces « gadgets » présente toutefois un grand intérêt conceptuel, comme le montrent Philippe Boulanger et Alain Cohen dans Le Trésor des paradoxes (Éditions Belin, 2007) : « Claude Shannon voulut élaborer une « machine inutile », sans finalité : on la met en marche en appuyant, comme sur tout dispositif électromécanique, sur une touche « on » ; mais les choses prennent alors une tournure surprenante, car cette mise sous tension déclenche un mécanisme provoquant aussitôt l’arrêt du gadget en mettant l’interrupteur sur « off ».', 'Mathématicien'),
(19, 'Mitchell Elegbe ', '6164698936e5e0.12082958.jpg', 'L’aventure commence en 2002, quand une petite start-up fondée par Mitchell Elegbe voit le jour à Lagos, au Nigéria. Petit à petit, le groupe commence à bâtir sa réussite sur le paiement électronique et les transactions financières. Comptant aujourd’hui plus de trente millions de consommateurs, et enregistrant plus de deux milliards de dollars de transaction, Interswitch est devenue une plateforme de référence pour les transactions bancaires en tout genre.\r\n\r\n\r\nIngénieur en électronique formé au pays de Galles, il a commencé sa carrière au sein de la société zimbabwéenne de télécommunications. Alors que la téléphonie mobile n’en était qu’à ses tout débuts, il a persuadé le gouvernement de Robert Mugabe de lever le monopole d’État sur les télécoms, avant de fonder Econet Wireless. Cette holding familiale non cotée en Bourse affiche pour sa seule filiale télécom zimbabwéenne un chiffre d’affaires de 832 millions de dollars en 2018, en hausse de 34 %. Le groupe, dont le siège se trouve à Londres, compte 5000 employés à travers 25 pays qui ne sont pas tous situés en Afrique, puisqu’il s’étend jusqu’à la Bolivie, la République dominicaine, la Grande-Bretagne et la Nouvelle-Zélande.\r\n', 'CEO d\'Interswitch'),
(20, 'Euclide', '616469d1ef9d08.12826549.jpg', 'Grand mathématicien de l’Antiquité grecque dont la vie nous est très peu connue, Euclide est l’auteur du premier véritable livre de mathématiques de l’histoire, Les éléments. Il y décrit l’un des plus vieux algorithmes encore utilisés aujourd’hui : l’algorithme d’Euclide. Celui-ci est désormais enseigné au collège, et est utilisé pour l’étude des nombres entiers, l’arithmétique.', 'Mathématicien'),
(21, 'Joseph-Marie Jacquard', '61646aec734c98.00427713.jpg', 'Inventeur français né à Lyon sous l’Ancien Régime pendant le règne de Louis XV, Joseph-Marie Jacquard est fils d’un maître-fabricant en soie. Grâce à son savoir en mécanique et à son éducation dans le milieu des canuts tisseurs de soie, il conçoit en 1801 un nouveau type de métier à tisser qui porte depuis son nom : le métier Jacquard.\r\nCette invention permet d’assister les ouvriers pour tisser des motifs compliqués sur le tissu, à l’aide d’un système complexe d’aiguilles, de crochets guidés par des cartes perforées à l’avance. Comme le motif obtenu dépend de la carte perforée utilisée, on peut en quelque sorte « programmer » un même métier Jacquard de différentes manières et obtenir à chaque fois des dessins différents sur le tissu. Ainsi cette machine est une des toutes premières capables de « lire » une suite d’instructions écrites dans un « langage machine » et de l’exécuter. Tout comme nos ordinateurs modernes, même si eux peuvent également modifier les données qu’ils ont en mémoire et appliquer d’autres types d’instructions permettant des utilisations plus variées.\r\n', 'Inventeur '),
(22, 'John Von Neumann', '61646b5ecf81d0.37367018.jpg', 'D’origine hongroise, ce génie précoce est l’un des nombreux savants d’Europe centrale à avoir émigré aux Etats Unis pendant l’occupation nazie. Il s’est intéressé à de nombreuses disciplines, mais en informatique, on a donné son nom à l’organisation de base des ordinateurs. Cette organisation distingue quatre composantes : une unité arithmétique et logique qui effectue les opérations de base, une unité de contrôle chargée du séquencement des opérations, la mémoire qui contient les données et le programme qui commande au traitement de ces données, et enfin les dispositifs d’entrées et sorties qui permettent à l’ordinateur de communiquer avec le monde extérieur. La paternité de ses travaux est cependant contestée.\r\nCe n’est pas le seul à avoir travaillé sur la machine informatique. On le considère aujourd’hui comme l’un des pères de l’ordinateur, avec Turing et bien d’autres…\r\nJohn Von Neumann a fait partie des savants qui ont participé au développement de la bombe atomique et de la bombe à hydrogène. C’est d’ailleurs l’exposition aux fortes radiations lors de ses nombreux tests qui a raccourci sa vie.\r\n', 'Mathématicien'),
(23, 'Grace Hopper', '61646dcb7839c7.60239899.jpg', 'Employée par la marine américaine pendant la Seconde Guerre Mondiale, elle ne prendra sa retraite définitive qu’à l’âge de 80 ans ! Grace Hopper a toujours défendu l’idée qu’un langage de programmation aurait plus de potentiel s’il était plus proche du langage humain que du langage des machines.\r\nC’est ainsi que Grace Hopper a conçu le premier compilateur. Un programme informatique est écrit dans un langage très abstrait, mélangeant anglais et mathématique compréhensible par un humain. Le compilateur va simplement traduire ce langage complexe en langage compréhensible par la machine. C’est l’intermédiaire, le médiateur.\r\nGrace Hopper est aussi connue pour son franc parler. Sa devise (qui n’est pas d’elle !) « Il vaut mieux devoir s’expliquer après que demander la permission avant ». Elle faisait également preuve de talents pédagogiques, en soulignant par exemple que 30 cm de fils électriques représentaient 1 nano-seconde, ce qui est le temps qu’il faut à une impulsion électrique pour parcourir les 30 cm.', 'Inventeur du langage combol');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
