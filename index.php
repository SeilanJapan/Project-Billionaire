<?php
	require_once('header.php');
	if(!empty($_POST)) {
		check();
	}

	require_once('random_question.php');

	if(isset($_SESSION['level']) && empty($_SESSION['level'])){
		$_SESSION['level'] = 0;
	}

	function check () {
		$chosen = substr($_POST['answer'], 3);

		if(sha1($chosen) == $_POST['cor']) {
			$_SESSION['level']++;
		} else {
			header('Location: getMoney.php');
		}
	}

?>

		<div class="row">
			<div class="col-xs-2 col-xs-offset-1">

				<!--Money-->
				<ol class="list-group" reversed="reversed" start="15">
					<li class="list-group-item">100000</li>
					<li class="list-group-item">50000</li>
					<li class="list-group-item">25000</li>
					<li class="list-group-item">10000</li>
					<li class="list-group-item">5000</li>
					<li class="list-group-item">2500</li>
					<li class="list-group-item">2000</li>
					<li class="list-group-item">1500</li>
					<li class="list-group-item">1000</li>
					<li class="list-group-item">500</li>
					<li class="list-group-item">250</li>
					<li class="list-group-item">200</li>
					<li class="list-group-item">150</li>
					<li class="list-group-item">100</li>
					<li class="list-group-item">50</li>
				</ol>

			</div>

			<div class="col-xs-8">

				<div class="row">
				  <div class="col-xs-8" >
				  	<img src="https://upload.wikimedia.org/wikipedia/en/7/75/Millionaire.png" class="img-responsive img-circle center-block" />
				  </div>
				  
				  <div class="col-xs-4">
					<div class="btn btn-group-lg btn-group-vertical" role="group" >
						  <button type="button" class="btn btn-primary" >Ask the audience</button>
						  <button type="button" class="btn btn-primary">50/50</button>
						  <button type="button" class="btn btn-primary" onclick="callFriend(<?php echo $correct; ?>)">Call a friend</button>
					</div>
					<a href='getMoney.php'>
					<button type="button" class="btn-lg btn-warning" id="takeMoney">Вземам си парите</button>
					</a>

				</div>

				<form action="index.php" method="POST">
					<input type="hidden" name="cor" value="<?php echo sha1($correct); ?>" />
				<div class="row" id="qtnField">
					<!--Questions-->
					<div class="col-xs-10 col-xs-offset-1" id="question">

						<div class="row">
							<div class="col-xs-12 thumbnail" >
								<p class="text-center"> <?php echo "$question"; ?> </p>
							</div>
						</div>

						<div class="row">
							<div>
								<input type="submit" class="btn btn-lg btn-default.raised col-xs-6 thumbnail" name="answer" value="A. <?php echo "$answerA"; ?>"/>
									
							</div>

							<div>
								<input type="submit" class="btn btn-lg btn-default.raised col-xs-6 thumbnail" name="answer" value="B. <?php echo "$answerB"; ?>"/>
							</div>
						</div>

						<div class="row">
							<div>
								<input type="submit" class="btn btn-lg btn-default.raised col-xs-6 thumbnail" name="answer" value="C. <?php echo "$answerC"; ?>"/>
									
							</div>

							<div>
								<input type="submit" class="btn btn-lg btn-default.raised col-xs-6 thumbnail" name="answer" value="D. <?php echo "$answerD"; ?>"/>
									
							</div>
						</div>

					</div>
					
				</div>
			</form>


			</div>
		</div>
<?php
	require_once('footer.php');
?>