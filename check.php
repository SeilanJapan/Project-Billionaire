<?php
	$level = 0;
	function check ($chosen) {
		if($chosen == $correct) {
			$level++;
		} else {
			header('Location: getMoney.php');
		}
	}

	check();
?>