<?php
	require "config.php";
	
	$return = [];
	$return["orderId"] = 0;

	if(isset($_POST["products"]) && isset($_POST["price"]) && isset($_POST["seller_id"])) {
		$products = json_decode($_POST["products"]);

		$sellerId = $_POST["seller_id"];
		$totalPrice = $_POST["price"];
		$sql = "INSERT INTO `es_orders` (`id`, `timestamp`, `total_price`, `seller_id`) VALUES (NULL, CURRENT_TIMESTAMP, '$totalPrice', '$sellerId');";
		$orderId = $APIDB->query($sql, true);

		if($orderId) {
			$insertSQL = "INSERT INTO `es_order_has_products` (`order_id`, `product_id`, `product_expiration_date`) VALUES ('2', '1', '2017-04-19'), ('2', '2', '2017-04-19');";

			foreach ($products as $key => $product) {
				if($key > 0) {
					$insertSQL .= ", ";
				}
				$insertSQL .= "('" . $orderId . "', '" . $product->id . "', '" . $product->date . "')";
			}
			$insertSQL .= ";";
			
			if($APIDB->query($insertSQL)) {
				$return["orderId"] = $orderId;
			}
		}
	}

	echo json_encode($return);
?>