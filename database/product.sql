-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 05 Tem 2023, 20:17:10
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `product`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--
use product;

CREATE TABLE `product` (
  `productPK` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productCode` varchar(255) NOT NULL,
  `productStatusFK` int(11) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `updatedAt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`productPK`, `productName`, `productCode`, `productStatusFK`, `active`, `updatedAt`) VALUES
(1, 'logitech', 'logitech', 1, 1, '2023-07-05 01:00:00'),
(2, 'asus', 'asus', 1, 0, '2023-07-04 01:00:00'),
(3, 'apple', 'apple', 1, 0, '2023-07-03 01:00:00'),
(4, 'hewlett packard', 'hewlett packard', 1, 1, '2023-07-02 01:00:00');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productPK`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `productPK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
