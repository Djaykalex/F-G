<?php if(isset($aControllerDatas['articles'])) { $article = $aControllerDatas['articles']; }else {$article = array(); };?>



<?php echo form_input('name', "Titre de l'article" , array('type' => 'text', 'class' => 'maclass', 'name' => 'name', 'errors' => $aControllerDatas['errors'],'values' => $article  )); ?>


<div class="row">
	<div class="rowright">
		<input type="hidden" name="created_by" id="InputCreated_by" value="<?php echo $_SESSION['user_pseudo']; ?>" >
		<?php if(isset($aControllerDatas['errors']['name'])) {  ?> <label for="name" generated="true" class="error"><?php echo $aControllerDatas['errors']['name']; ?></label> <?php } ?>
	</div>
</div>
<div class="row">
	<label>icone</label>
	<div class="rowright">
		
		<textarea cols="1" rows="1" name="icone" id="InputIcone"><?php if(isset($article['icone'])) { echo $article['icone']; } ?></textarea>
		<?php if(isset($aControllerDatas['errors']['content'])) {  ?> <label for="content" generated="true" class="error"><?php echo $aControllerDatas['errors']['content']; ?></label> <?php } ?>
		
		<script type="text/javascript">
			//<![CDATA[

				// This call can be placed at any point after the
				// <textarea>, or inside a <head><script> in a
				// window.onload event handler.

				// Replace the <textarea id="editor"> with an CKEditor
				// instance, using default configurations.
				
				var editor = CKEDITOR.replace( 'InputIcone' );
				CKFinder.setupCKEditor( editor, '<?php echo BASE_URL; ?>/js/ckfinder/' );
			//]]>
			
		</script>
		
	</div>
</div>

<div class="row">
	<label>Resume</label>
	<div class="rowright">
		<textarea cols="10" rows="1" name="resume" id="Inputresume"><?php if(isset($article['resume'])) { echo $article['resume']; } ?></textarea>
		<?php if(isset($aControllerDatas['errors']['name'])) {  ?> <label for="name" generated="true" class="error"><?php echo $aControllerDatas['errors']['name']; ?></label> <?php } ?>
	</div>
</div>


<?php echo form_input('articles_type_id', "Type d'article" , array('type' => 'select',  'class' => 'maclass', 'name' => 'articles_type_id', 'errors' => $aControllerDatas['errors'], 'values' => $article, 'datas' => $aControllerDatas['articlesTypesList'])); ?>

<!--
<div class="row">
	<label>Type d'article</label>
	<div class="rowright">
		<select name="articles_type_id" id="InputArticlesTypeId">
			<?php 
			foreach($aControllerDatas['articlesTypesList'] as $k => $v) {

				if(isset($article['articles_type_id']) && $article['articles_type_id'] == $k) { $selected = ' selected="selected"'; } else { $selected = ''; }
				
				?><option<?php echo $selected; ?> value="<?php echo $k; ?>"><?php echo $v; ?></option><?php 
			} 
			?>
		</select>
	</div>
</div>
-->

<?php echo form_input('content', "Texte" , array('type' => 'textarea',  'class' => 'maclass',  'errors' => $aControllerDatas['errors'], 'values' => $article, 'wysiswyg' => true, 'cols' => 50, 'rows' => 20,  )); ?>


<?php echo form_input('Online', "" , array('type' => 'checkbox',  'class' => 'maclass', 'errors' => $aControllerDatas['errors'], 'values' => $article, 'label_bis' => 'En ligne')); ?>

<!--
<div class="row">
	<label></label>
	<div class="rowright">
		<input type="hidden" value="0" name="online" id="InputOnlineHidden">
		<input type="checkbox" value="1" name="online" id="InputOnline" <?php echo isset($article['Online']) && $article['Online'] ? 'checked="checked"' : ''; ?>>
		<label for="InputOnline">En ligne</label>
	</div>
</div>
-->




<!--
<div class="row">
	<button type="submit" class="medium grey"><span>Valider</span></button>
</div>
-->



