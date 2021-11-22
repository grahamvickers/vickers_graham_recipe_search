<?php
$q=$_GET['custid'];
if($q!=NULL) {
    $db_host='localhost:8889';
    $db_user='root';
    $db_pass='root';
    $db_name='livesearch';

    if (getenv('IDP_ENVIRONMENT') === 'docker') {
        $db_host = 'mysql';
        $db_name = 'livesearch';
        $db_user = 'docker_u';
        $db_pass = 'docker_p';
    }    
    $connection = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

$sql="SELECT * FROM tbl_recipes WHERE recipe_id =".$q;
$result = mysqli_query($connection, $sql);
$row = mysqli_fetch_array($result);

print "<img id='displayImg' src=\"".$row['recipe_image']."\"><div id='data'><h3>".$row['recipe_name'].", ".$row['recipe_bio']."</h3>".$row['recipe_time']." <br /> ".$row['recipe_cost']."</div>";
}
?>