<?php if(isset($aControllerDatas['article_resume'])) { $article_resume = $aControllerDatas['article_resume'];} // table article?> 
<?php if(isset($aControllerDatas['articlesTypesList'])) { $articlesTypesList = $aControllerDatas['articlesTypesList'];} // table article type?>
<?php if(isset($aControllerDatas['totalarticles'])) { $totalarticles = $aControllerDatas['totalarticles'];} //affiche le nbr d'articles?>
<?php if(isset($aControllerDatas['com'])) { $com = $aControllerDatas['com'];} // compte le nbr de commentaires pour chaque articles?>


<div class="grid_16">
	<div class="titre">Les News</div>
	<?php
	/** Affiche les différents articles*/
		foreach($article_resume as $k => $v) { ?>
			<div class="fondtext_front ">
				<img class="icone_petit_news" src="<?php echo BASE_URL."/".$v['petit_icone'];?>" title="<?php echo $v['title']; ?>" alt="<?php echo $v['alt']; ?>"/>
				<a class="titre_front"  href="<?php echo BASE_URL;?>/homes/details/<?php echo $v["id"]; ?> "><?php echo $v['name'];?></a>
				<div class="text_front"> <?php echo $v['resume'];?></div>
				<div class="date_front"><?php echo $v['Created'];?> par <?php echo $v['created_by'];?></div>
				
			</div>
			<div class="fintext-front"></div>
		<?php }?>	
	<?php 
	/** bas de page */

	foreach($com as $k => $v) {
		
		echo '<div >Nb commentaires : '.$v['COUNT(id)'].'</div>'; //Compte le nbr total de commentaires. Pour l'affichage, on centre la liste des pages.
	}?>
	<?php 
	foreach($totalarticles as $k => $v) {
		
		echo '<div class="pagination_articles">Nb Articles : '.$v.'</div>'; //Affiche le nbr d'articles total. Pour l'affichage, on centre la liste des pages dans un cadre gris.
	}?>
</div>

	
	
			
	
	
	
	
