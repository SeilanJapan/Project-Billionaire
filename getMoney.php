<?php
  require_once('header.php');
  require_once('db_connect.php');
  require_once('random_question.php');

  $lvl = $_SESSION['level'];

  $q1 = "SELECT * from difficultylevels WHERE difficulty=$lvl";

  $result1 = mysqli_query($conn, $q1);

  if(mysqli_num_rows($result1) > 0) {
    while($row1 = mysqli_fetch_assoc($result1)) {
      $money = $row1['money'];
    }

  }

  session_destroy();
?>


<div class="row">

  <div class ="col-xs-5 col-xs-offset-1" id="">
    <h1 class="text-danger">Вие спечелихте <?php echo "$money "; ?> лева. </h1>
    <form>
      <div class="form-group">
        <div class="col-xs-offset-3 col-xs-1">
          <a href="index.php">
            <input type="button" class="btn btn-primary" value="Играй отново" />
          <a/>
        </div>
      </div>
      <div class="form-group">
        <div class="col-xs-offset-3 col-xs-1">
          <a href="logout.php">
            <input type="button" class="btn btn-primary" value="Излизам от играта"/>
          </a>
        </div>
      </div>
    </form>
   </div> 
   <div class ="col-xs-5 col-xs-offset-1">
      <img src="logo.jpg"/>
   </div> 

</div>

</body>
</html>