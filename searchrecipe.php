<?php
$q=$_GET['searchstring'];
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
$sql="SELECT * FROM tbl_recipes WHERE recipe_type LIKE '".$q."%'";
$result = mysqli_query($connection, $sql);
$numrows = mysqli_num_rows($result);

if($numrows > 0) {
while($row = mysqli_fetch_array($result)) {
        print "<a href=\"#\" id=\"".$row['recipe_id']."\"><img id='thumbnailImg' src=\"".$row['recipe_thumbnail']."\"> ".$row['recipe_name']."</a>";
    }

}   else    {
    print "No results match your search";
}
}
?>