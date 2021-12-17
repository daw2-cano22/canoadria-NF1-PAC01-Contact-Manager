<?php
      $conexion = pg_connect("host=localhost port=5432 dbname=sample_db user=postgres password=root") or die("Failure connecting to the database!");
	  if (!$conexion) 
	  {
		echo 'FAIL';
	  }
	  else
	  {
		  echo 'GOOD';
	  }         
?>
