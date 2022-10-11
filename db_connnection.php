<?php

function OpenCon()
 {
 $dbhost = "localhost";
 $dbuser = "text here";
 $dbpass = "text here";
 $db = "Toys";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
 return $conn;
 }
function CloseCon($conn)
 {
 $conn -> close();
 }
?>
