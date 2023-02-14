
<?php

include('dbcon.php');

$uid = $_POST['uid'];

mysqli_query($conn,"delete from reg_member where member_id = '$uid' ") or die(mysqli_error());

?>
