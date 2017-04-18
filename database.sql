-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 12 apr 2017 om 15:34
-- Serverversie: 10.1.13-MariaDB
-- PHP-versie: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `0894225`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `es_orders`
--

CREATE TABLE `es_orders` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_price` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `es_orders`
--

INSERT INTO `es_orders` (`id`, `timestamp`, `total_price`, `seller_id`) VALUES
(1, '2017-04-12 12:21:29', 149, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `es_order_has_products`
--

CREATE TABLE `es_order_has_products` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `es_order_has_products`
--

INSERT INTO `es_order_has_products` (`order_id`, `product_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `es_products`
--

CREATE TABLE `es_products` (
  `id` int(11) NOT NULL,
  `product_code` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `expiration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `es_products`
--

INSERT INTO `es_products` (`id`, `product_code`, `name`, `price`, `expiration_date`) VALUES
(1, 54491472, 'Coca Cola Fles 500ml', 149, '2017-07-31');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `es_sellers`
--

CREATE TABLE `es_sellers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `es_sellers`
--

INSERT INTO `es_sellers` (`id`, `name`, `store_id`) VALUES
(1, 'Menno', 1),
(2, 'Marc', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `es_stores`
--

CREATE TABLE `es_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `home_number` varchar(6) NOT NULL,
  `zip_code` varchar(6) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `es_stores`
--

INSERT INTO `es_stores` (`id`, `name`, `street`, `home_number`, `zip_code`, `city`, `phone`) VALUES
(1, 'Spar', 'Glashaven', '6', '3011XH', 'Rotterdam', '010-404 7655');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `es_orders`
--
ALTER TABLE `es_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `es_products`
--
ALTER TABLE `es_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `es_sellers`
--
ALTER TABLE `es_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `es_stores`
--
ALTER TABLE `es_stores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `es_orders`
--
ALTER TABLE `es_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `es_products`
--
ALTER TABLE `es_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `es_sellers`
--
ALTER TABLE `es_sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `es_stores`
--
ALTER TABLE `es_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
