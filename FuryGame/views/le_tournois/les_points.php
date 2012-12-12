<?php 
if(isset($aControllerDatas['les_points'])) { $les_points = $aControllerDatas['les_points']; } // affiche le jeux ciblé présent au tournoi F-G
?>
<div class="grid_16">
	<div class="">
		<!--<div class="titre"><?php echo $les_points['name']; ?></div>-->
	</div>
	<?php foreach ($les_points as $k => $v) { ?>
		<div><a class="tfg_liens_details"  href="<?php echo BASE_URL;?>/le_tournois/details_jeux/<?php echo $v["id"]; ?> ">
			<img class="tfg_points" src="<?php echo BASE_URL;?>/img/jeux_tournois/tfg_points.jpg" title="joueurs" alt="joueurs"/>
			<img class="tfg_points_flag" src="<?php echo BASE_URL."/".$v['nb_points'];?>" title="<?php echo $v['title_image']; ?>" alt="<?php echo $v['alt']; ?>"/>
			<div class="tfg_text"><?php echo $v['tfg']; ?></div>
			<img class="boite" src="<?php echo BASE_URL."/".$v['boite'];?>" title="<?php echo $v['title_image']; ?>" alt="<?php echo $v['alt']; ?>"/>
			<!--<img class="age_icone" src="<?php echo BASE_URL;?>/img/jeux_tournois/age.png" title="age" alt="age"/>-->
			<div class="age"><?php echo $v['age']; ?>+</div>
			<!--<img class="time_icone" src="<?php echo BASE_URL;?>/img/jeux_tournois/time.png" title="temps de jeu" alt="temps de jeu"/>-->
			<div class="time"><?php echo $v['duree']; ?></div>
			<!--<img class="players_icone" src="<?php echo BASE_URL;?>/img/jeux_tournois/players.png" title="joueurs" alt="joueurs"/>-->
			<div class="players"><?php echo $v['nb_joueurs']; ?> joueurs</div>
			</a>
		</div>
	<?php } ?>
</div>
		
	


	
	
			
	
	
	
	
