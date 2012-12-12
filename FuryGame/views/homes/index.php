<?php if(isset($aControllerDatas['article_resume'])) { $article_resume = $aControllerDatas['article_resume'];}?>
<?php if(isset($aControllerDatas['articlesTypesList'])) { $articlesTypesList = $aControllerDatas['articlesTypesList'];}?>
<?php if(isset($aControllerDatas['totalarticles'])) { $totalarticles = $aControllerDatas['totalarticles'];} //affiche le nbr d'articles?>
<?php if(isset($aControllerDatas['test'])) { $test = $aControllerDatas['test'];} // affiche le nbr d'articles?>
<?php if(isset($aControllerDatas['nbr_commentaires'])) { $nbr_commentaires = $aControllerDatas['nbr_commentaires'];} // compte le nbr de commentaires pour chaque articles?>
<?php if(isset($aControllerDatas['com'])) { $com = $aControllerDatas['com'];} // compte le nbr de commentaires pour chaque articles?>


<div class="grid_16">
	<div class="fondtext">
		<?php if(isset($_SESSION['role']) && $_SESSION['role'] != 5){?>
			<div class="bonj"><h2 class="bonjour"><span class="yop">Bonjour <?php echo $_SESSION['user_pseudo'];?> !</span></h2></div>
		<?php }
		/** On identifie le membre qui se connecte*/
		?>
		<div class="wrapper"> <!-- SLICEBOX -->
				<ul id="sb-slider" class="sb-slider">
					<li>
						<a href="<?php echo BASE_URL; ?>/fury_games/index" ><img src="<?php echo BASE_URL; ?>/img/images/7a.jpg" title="Festival Fury-Game" alt="Festival Fury-Game"/></a>
						<div class="sb-description">
							<h3>Le Festival Fury-Game c'est quoi?!</h3>
						</div>
					</li>
					<li>
						<a href="<?php echo BASE_URL; ?>/le_tournois/index" ><img src="<?php echo BASE_URL; ?>/img/images/page_de_presentation2.jpg" title="tournoi Fury-Game" alt="tournoi Fury-Game"/></a>
						<div class="sb-description">
							<h3>Le tournoi Fury-Game.</h3>
						</div>
					</li>
					<li>
						<a href="<?php echo BASE_URL; ?>/guildes/index" ><img src="<?php echo BASE_URL; ?>/img/images/ff.jpg" title="Création de guilde" alt="image1"/></a>
						<div class="sb-description">
							<h3>Création de guilde</h3>
						</div>
					</li>
					<li>
						<a href="<?php echo BASE_URL; ?>/infos/plan_du_sites" ><img src="<?php echo BASE_URL; ?>/img/images/plan-du-site-+-legende_petit.jpg" title="site Fury-Game" alt="site Fury-Game"/></a>
						<div class="sb-description">
							<h3>Le site Fury-Game.</h3>
						</div>
					</li>
					<li>
						<a href="<?php echo BASE_URL; ?>/fury_games/index" ><img src="<?php echo BASE_URL; ?>/img/images/7a.jpg" title="Festival Fury-Game" alt="Festival Fury-Game"/></a>
						<div class="sb-description">
							<h3>Le Festival Fury-Game c'est quoi?!</h3>
						</div>
					</li>
					<li>
						<a href="<?php echo BASE_URL; ?>/guildes/index" ><img src="<?php echo BASE_URL; ?>/img/images/ff.jpg" title="Création de guilde" alt="image1"/></a>
						<div class="sb-description">
							<h3>Création de guilde</h3>
						</div>
					</li>
					<li>
						<a href="<?php echo BASE_URL; ?>/fury_games/index" ><img src="<?php echo BASE_URL; ?>/img/images/7a.jpg" title="Festival Fury-Game" alt="Festival Fury-Game"/></a>
						<div class="sb-description">
							<h3>Le Festival Fury-Game c'est quoi?!</h3>
						</div>
					</li>
				</ul>
			<div id="shadow" class="shadow"></div>
			<div id="nav-arrows" class="nav-arrows">
				<a href="#">Next</a>
				<a href="#">Previous</a>
			</div>
		</div><!--  FIN SLICEBOX  /wrapper -->
		<img class="imgdroite" src="<?php echo BASE_URL; ?>/img/logo-fury-game.png" alt="Logo fury-game" title="Logo fury-game" />
		<img class="imggauche" src="<?php echo BASE_URL; ?>/img/press-start-to-play.png" alt="Logo press start to play" title="Logo press start to play" />
	</div>
	<div class="fintext"></div>
	<!--  Carossel News -->
	<div class="titre">Les dernieres news</div>
	<img class="imgnews" src="<?php echo BASE_URL; ?>/img/home_galerie.jpg" alt="fond image" title="fond image" />
	<div class="caroussel">
		<br />
			<div class="list_carousel">
				<ul id="foo2">
				<?php foreach($article_resume as $k => $v) { ?>
					<li><a href="<?php echo BASE_URL;?>/homes/details/<?php echo $v["id"]; ?> "><img class="icone_test_news" src="<?php echo BASE_URL."/".$v['icone'];?>" title="<?php echo $v['title']; ?>" alt="<?php echo $v['alt']; ?>"/></a></li>
					
				<?php }?>	
				</ul>
				<div class="clearfix"></div>
				<a id="prev2" class="prev" href="#">&lt;</a>
				<a id="next2" class="next" href="#">&gt;</a>
				<div id="pager2" class="pager"></div>
			</div>
		<br />
	</div>
	<br />
	<br />
	<br />
	<div class="fintext"></div>
	<!--  Fin Carossel News -->
</div>

