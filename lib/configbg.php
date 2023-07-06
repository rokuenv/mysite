<?php 
	$nameDB = "epiz_33525914_site";
	$nameSERVER = "sql304.epizy.com";
	$nameUSER = "epiz_33525914";
	$passUSER = "SeNqMkMWVvAe";

	$conDB = mysqli_connect($nameSERVER, $nameUSER, $passUSER, $nameDB) 
	or die("ERROR".mysqli_error($nameDB));

	mysqli_query($conDB, "SET NAMES utf8");
?>
