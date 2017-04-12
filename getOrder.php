<?php
	require "config.php";
	$return = [];

	

	if (isset($_GET["id"]) && !empty($_GET["id"])) {
		$sql = "SELECT 
		`es_products`.`id` AS `product_id`, 
		`es_products`.`product_code` AS `product_code`, 
		`es_products`.`name` AS `product_name`, 
		`es_products`.`price` AS `product_price`, 
		`es_products`.`expiration_date` AS `product_expiration_date`, 
		`es_orders`.`id` AS `order_id`, 
		`es_orders`.`timestamp` AS `order_timestamp`, 
		`es_orders`.`total_price` AS `order_price`, 
		`es_sellers`.`id` AS `seller_id`, 
		`es_sellers`.`name` AS `seller_name`, 
		`es_stores`.`name` AS `store_name`, 
		`es_stores`.`street` AS `store_street`, 
		`es_stores`.`home_number` AS `store_home_number`, 
		`es_stores`.`zip_code` AS `store_zip`, 
		`es_stores`.`city` AS `store_city`, 
		`es_stores`.`phone` AS `store_phone`
		FROM `es_products` 
		JOIN `es_order_has_products` ON `es_products`.`id` = `es_order_has_products`.`product_id` 
		JOIN `es_orders` ON `es_order_has_products`.`order_id` = `es_orders`.`id` 
		JOIN `es_sellers` ON `es_orders`.`seller_id` = `es_sellers`.`id` 
		JOIN `es_stores` ON `es_sellers`.`store_id` = `es_stores`.`id` 
		WHERE `order_id` = " . $_GET["id"];

		$result = $APIDB->query($sql);
		if ($result->num_rows > 0) {
			$return["products"] = [];

			while($row = $result->fetch_assoc()) {
				$return["id"] = (int) $row["order_id"];
				$return["timestamp"] = $row["order_timestamp"];
				$return["price"] = $row["order_price"];

				$return["store"]["name"] = $row["store_name"];
				$return["store"]["street"] = $row["store_street"];
				$return["store"]["home_number"] = $row["store_home_number"];
				$return["store"]["zip"] = $row["store_zip"];
				$return["store"]["city"] = $row["store_city"];
				$return["store"]["phone"] = $row["store_phone"];

				$return["store"]["seller"]["id"] = $row["seller_id"];
				$return["store"]["seller"]["name"] = $row["seller_name"];
				$tempProduct = [];


				$tempProduct["id"] = (int) $row["product_id"];
				$tempProduct["code"] = $row["product_code"];
				$tempProduct["name"] = $row["product_name"];
				$tempProduct["price"] = $row["product_price"];
				$tempProduct["date"] = $row["product_expiration_date"];
				array_push($return["products"], $tempProduct);
			}
		} else {
			http_response_code(404); //not found
		}

	} else {
		http_response_code(400); //bad request
	}

	echo json_encode($return);
?>