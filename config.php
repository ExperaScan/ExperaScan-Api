<?php
	error_reporting(E_ERROR | E_WARNING | E_PARSE);
	//Database configuration
	define("DB_SERVER", "localhost");
	define("DB_NAME", "0894225");
	define("DB_USERNAME", "root");
	define("DB_PASSWORD", "");

	require "db.php";
	$APIDB = new APIDB();

	//Make the content of the request always in JSON format
	header("Content-Type: application/json");
	header("Access-Control-Allow-Origin: *");
?>