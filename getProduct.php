<?php
	require "config.php";
	$return = [];

	if (isset($_GET["code"]) && !empty($_GET["code"]) && preg_match("/^[0-9]+-[0-9]+$/", $_GET["code"])) {
		$barcode = explode("-", $_GET["code"]);
		$productCode = $barcode[0];
		$expDate = $barcode[1];
		$expDate = substr($expDate, 0, 4) . "-" . substr($expDate, 4, 2) . "-" . substr($expDate, 6, 2);


		$sql = "SELECT * FROM es_products WHERE `product_code` = '$productCode'";

		$result = $APIDB->query($sql);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$return["id"] = (int) $row["id"];
				$return["code"] = $row["product_code"];
				$return["name"] = $row["name"];
				$return["price"] = (int) $row["price"];
				$return["date"] = $expDate;
			}
		} else {
			http_response_code(404); //not found
		}

	} else {
		http_response_code(400); //bad request
	}

	echo json_encode($return);
?>