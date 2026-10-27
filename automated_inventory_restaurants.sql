-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Creato il: Giu 14, 2026 alle 16:38
-- Versione del server: 10.11.16-MariaDB-ubu2204
-- Versione PHP: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automated_inventory_restaurants`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `batch`
--

CREATE TABLE `batch` (
  `batch_id` int(11) NOT NULL,
  `batch_number` varchar(50) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `initial_quantity` decimal(10,3) NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `unit_cost` decimal(10,4) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `received_date` timestamp NULL DEFAULT current_timestamp(),
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `batch`
--

INSERT INTO `batch` (`batch_id`, `batch_number`, `product_id`, `initial_quantity`, `quantity`, `expiry_date`, `unit_cost`, `supplier_id`, `received_date`, `note`) VALUES
(8, 'PASTA-01', 1, 10.000, 9.400, '2027-06-12', 1.9000, 3, '2026-06-11 11:46:18', NULL),
(9, 'PEC-55', 4, 6.000, 5.820, '2026-07-12', 2.3333, 3, '2026-06-11 11:48:00', NULL),
(11, 'PASTA-02', 1, 10.000, 10.000, '2027-07-11', 1.3000, 3, '2026-06-11 14:43:44', NULL),
(12, 'GUANC-01', 3, 10.000, 9.640, '2026-08-26', 2.0000, 3, '2026-06-11 14:45:47', NULL),
(14, 'UOVA-02', 2, 60.000, 24.000, '2026-10-22', 0.3000, 3, '2026-06-11 14:47:46', NULL),
(15, 'POMO-01', 5, 12.000, 12.000, '2026-07-31', 1.3000, 2, '2026-06-11 16:21:00', ''),
(16, 'PROPARMA-01', 6, 2.940, 2.940, '2026-08-31', 28.0000, NULL, '2026-06-11 16:21:00', ''),
(17, 'COPPA-01', 7, 1.950, 1.950, '2026-06-15', 18.5000, NULL, '2026-06-11 16:21:00', ''),
(18, 'CACIOERBE-01', 8, 2.450, 2.450, '2026-07-31', 14.0000, NULL, '2026-06-11 16:21:00', ''),
(19, 'PECSTAG-01', 9, 2.950, 2.950, '2026-08-10', 22.0000, NULL, '2026-06-11 16:21:00', ''),
(20, 'FEGVIT-01', 10, 2.000, 2.000, '2026-07-31', 14.5000, NULL, '2026-06-11 16:21:00', ''),
(21, 'CIPBIANCHE-01', 11, 10.000, 10.000, '2026-07-31', 1.8000, NULL, '2026-06-11 16:21:00', ''),
(22, 'BUR-01', 12, 2.000, 2.000, '2026-07-31', 8.5000, NULL, '2026-06-11 16:21:00', ''),
(23, 'OLIOEVO-01', 13, 5.000, 5.000, '2027-01-01', 11.0000, NULL, '2026-06-11 16:21:00', ''),
(24, 'VINOCUC-01', 14, 3.000, 3.000, '2027-01-01', 3.5000, NULL, '2026-06-11 16:21:00', ''),
(25, 'MASC-01', 15, 2.000, 2.000, '2026-07-31', 7.5000, NULL, '2026-06-11 16:21:00', ''),
(26, 'SAVO-01', 16, 3.000, 3.000, '2026-10-31', 4.5000, NULL, '2026-06-11 16:21:00', ''),
(27, 'ZUKKB-01', 17, 10.000, 10.000, '2028-01-01', 1.2000, NULL, '2026-06-11 16:21:00', ''),
(28, 'CAFFEGR-01', 18, 4.000, 4.000, '2026-12-10', 16.0000, NULL, '2026-06-11 16:21:00', ''),
(29, 'TRAMINER-01', 19, 18.000, 18.000, '2029-01-01', 14.0000, NULL, '2026-06-11 16:21:00', ''),
(30, 'ROSCON-01', 20, 24.000, 24.000, '2030-01-01', 11.5000, NULL, '2026-06-11 16:21:00', ''),
(31, 'H2O-01', 21, 120.000, 120.000, '2027-06-01', 0.6500, NULL, '2026-06-11 16:21:00', ''),
(32, 'H2OFR-01', 22, 120.000, 120.000, '2027-06-01', 0.6500, NULL, '2026-06-11 16:21:00', ''),
(46, 'null', 2, 35.000, 35.000, '2024-06-12', 0.2500, 3, '2026-06-13 06:50:53', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `batch_archive`
--

CREATE TABLE `batch_archive` (
  `archive_id` int(11) NOT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `batch_number` varchar(50) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `initial_quantity` decimal(10,3) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `unit_cost` decimal(10,4) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `received_date` timestamp NULL DEFAULT NULL,
  `depleted_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `batch_archive`
--

INSERT INTO `batch_archive` (`archive_id`, `batch_id`, `batch_number`, `product_id`, `initial_quantity`, `expiry_date`, `unit_cost`, `supplier_id`, `received_date`, `depleted_date`) VALUES
(1, 13, 'UOVA-01', 2, 60.000, '2026-09-22', 0.3000, 3, '2026-06-11 14:45:47', '2026-06-11 16:10:11');

-- --------------------------------------------------------

--
-- Struttura della tabella `menu`
--

CREATE TABLE `menu` (
  `DISH` varchar(40) NOT NULL,
  `D_COST` decimal(10,2) DEFAULT NULL,
  `CATEGORY` enum('Antipasti','Primi','Secondi','Dolci','Vini','Bevande') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `menu`
--

INSERT INTO `menu` (`DISH`, `D_COST`, `CATEGORY`) VALUES
('Acqua Frizzante 0.75L', 2.50, 'Bevande'),
('Acqua Naturale 0.75L', 2.50, 'Bevande'),
('Carbonara', 9.45, 'Primi'),
('Fegato alla Veneziana', 16.50, 'Secondi'),
('Gewurztraminer', 26.00, 'Vini'),
('Rosso Conero', 22.00, 'Vini'),
('Tagliere Salumi e Formaggi', 18.00, 'Antipasti'),
('Tiramisù', 6.50, 'Dolci');

-- --------------------------------------------------------

--
-- Struttura della tabella `orders`
--

CREATE TABLE `orders` (
  `ORDER_ID` int(100) NOT NULL,
  `TABLE_NUM` int(100) NOT NULL,
  `DISH_O` varchar(40) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `ORDER_DATE` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `orders`
--

INSERT INTO `orders` (`ORDER_ID`, `TABLE_NUM`, `DISH_O`, `QUANTITY`, `ORDER_DATE`) VALUES
(1, 12, 'Carbonara', 1, '2026-06-13 06:42:05');

-- --------------------------------------------------------

--
-- Struttura della tabella `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `supplier_product_code` varchar(50) DEFAULT NULL,
  `ordered_quantity` decimal(10,3) DEFAULT NULL,
  `ordered_unit` varchar(20) DEFAULT NULL,
  `gmail_thread_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `status` enum('pending','confirmed','substituted','unavailable') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `supplier_id`, `product_id`, `supplier_product_code`, `ordered_quantity`, `ordered_unit`, `gmail_thread_id`, `created_at`, `status`) VALUES
(38, 3, 2, 'uova_all_terra', 36.000, 'unità', '19ebfbbdb6018faf', '2026-06-13 06:47:00', 'confirmed'),
(39, 4, 2, 'uova01', 1.000, 'unità', '19ebfc0c08651078', '2026-06-13 06:52:21', 'pending');

-- --------------------------------------------------------

--
-- Struttura della tabella `recipe`
--

CREATE TABLE `recipe` (
  `DISH_NAME` varchar(40) NOT NULL,
  `PROD_R_ID` int(11) NOT NULL,
  `Q_NEEDED` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `recipe`
--

INSERT INTO `recipe` (`DISH_NAME`, `PROD_R_ID`, `Q_NEEDED`) VALUES
('Carbonara', 1, 0.100),
('Carbonara', 2, 3.000),
('Carbonara', 3, 0.060),
('Carbonara', 4, 0.030),
('Tagliere Salumi e Formaggi', 6, 0.060),
('Tagliere Salumi e Formaggi', 3, 0.040),
('Tagliere Salumi e Formaggi', 7, 0.050),
('Tagliere Salumi e Formaggi', 8, 0.050),
('Tagliere Salumi e Formaggi', 9, 0.050),
('Fegato alla Veneziana', 10, 0.200),
('Fegato alla Veneziana', 11, 0.150),
('Fegato alla Veneziana', 12, 0.020),
('Fegato alla Veneziana', 13, 0.015),
('Fegato alla Veneziana', 14, 0.030),
('Tiramisù', 15, 0.080),
('Tiramisù', 2, 1.000),
('Tiramisù', 16, 0.050),
('Tiramisù', 17, 0.025),
('Tiramisù', 18, 0.015),
('Gewurztraminer', 19, 1.000),
('Rosso Conero', 20, 1.000),
('Acqua Naturale 0.75L', 21, 1.000),
('Acqua Frizzante 0.75L', 22, 1.000);

-- --------------------------------------------------------

--
-- Struttura della tabella `rest_inventory`
--

CREATE TABLE `rest_inventory` (
  `PRODUCT_ID` int(30) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `QUANTITY` decimal(10,3) DEFAULT NULL,
  `EXPIRY_DATE` date NOT NULL,
  `UNIT_COST` decimal(10,4) DEFAULT NULL,
  `MIN_STOCK` decimal(10,3) DEFAULT NULL,
  `UNIT` varchar(20) DEFAULT 'UNIT',
  `product_substituted` tinyint(1) DEFAULT 0,
  `substitution_note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `rest_inventory`
--

INSERT INTO `rest_inventory` (`PRODUCT_ID`, `NAME`, `QUANTITY`, `EXPIRY_DATE`, `UNIT_COST`, `MIN_STOCK`, `UNIT`, `product_substituted`, `substitution_note`) VALUES
(1, 'Pasta (Spaghetti)', 19.900, '2026-06-25', 1.9000, 10.000, 'kg', 1, ''),
(2, 'Uova ', 59.000, '2024-06-11', 0.2500, 30.000, 'unità', 0, NULL),
(3, 'Guanciale', 9.940, '2026-07-31', 18.5000, 1.000, 'kg', 0, NULL),
(4, 'Pecorino Romano', 5.970, '2026-06-22', 2.3000, 3.000, 'kg', 0, NULL),
(5, 'Pomodori', 12.000, '2026-07-31', 1.3000, 6.000, 'kg', 0, NULL),
(6, 'Prosciutto di Parma', 2.940, '2026-08-31', 28.0000, 1.000, 'kg', 0, NULL),
(7, 'Coppa', 1.950, '2026-06-15', 18.5000, 0.500, 'kg', 0, NULL),
(8, 'Caciotta alle erbe', 2.450, '2026-07-31', 14.0000, 0.500, 'kg', 0, NULL),
(9, 'Pecorino stagionato', 2.950, '2026-08-10', 22.0000, 1.000, 'kg', 0, NULL),
(10, 'Fegato di vitello', 2.000, '2026-07-31', 14.5000, 0.500, 'kg', 0, NULL),
(11, 'Cipolle Bianche', 10.000, '2026-07-31', 1.8000, 2.000, 'kg', 0, NULL),
(12, 'Burro', 2.000, '2026-07-31', 8.5000, 0.500, 'kg', 0, NULL),
(13, 'Olio di Oliva Extravergine', 5.000, '2027-01-01', 11.0000, 1.000, 'lt', 0, NULL),
(14, 'Vino Bianco da Cucina', 3.000, '2027-01-01', 3.5000, 1.000, 'lt', 0, NULL),
(15, 'Mascarpone', 2.000, '2026-07-31', 7.5000, 0.500, 'kg', 0, NULL),
(16, 'Savoiardi', 3.000, '2026-10-31', 4.5000, 1.000, 'kg', 0, NULL),
(17, 'Zucchero', 10.000, '2028-01-01', 1.2000, 2.000, 'kg', 0, NULL),
(18, 'Caffè in grani', 4.000, '2026-12-10', 16.0000, 1.000, 'kg', 0, NULL),
(19, 'Gewurztraminer', 18.000, '2029-01-01', 14.0000, 6.000, 'unità', 0, NULL),
(20, 'Rosso Conero (Bottiglia)', 24.000, '2030-01-01', 11.5000, 6.000, 'unità', 0, NULL),
(21, 'Acqua Naturale 0.75L', 120.000, '2027-06-01', 0.6500, 24.000, 'unità', 0, NULL),
(22, 'Acqua Frizzante 0.75L', 120.000, '2027-06-01', 0.6500, 24.000, 'unità', 0, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `sup_name` varchar(50) NOT NULL,
  `sup_mail` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `sup_name`, `sup_mail`, `phone`, `notes`) VALUES
(1, 'PASTIFICIO MANCINI', 'ordini@pastificio.example.com', '3330000001', 'ask for eventual discounts'),
(2, 'SBROLLA ORTOFRUTTA', 'ordini@ortofrutta.example.com', '3330000002', 'non consegna nel weekend'),
(3, 'DAVIDEFORNITORI', 'ordini@fornitore-principale.example.com', '3330000003', NULL),
(4, 'DAWEFOODS', 'ordini@fornitore-secondario.example.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `supplier_products`
--

CREATE TABLE `supplier_products` (
  `supplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_per_unit` decimal(10,4) DEFAULT NULL,
  `is_preferred` tinyint(1) DEFAULT 0,
  `supplier_product_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `supplier_products`
--

INSERT INTO `supplier_products` (`supplier_id`, `product_id`, `price_per_unit`, `is_preferred`, `supplier_product_code`) VALUES
(2, 5, 1.2000, 1, 'pmdr_grap'),
(3, 1, 1.9000, 1, 'p_spght_01'),
(3, 2, 0.2500, 1, 'uova_all_terra'),
(3, 4, 2.3000, 1, 'pec_roma'),
(4, 1, 1.2000, 0, 'spght'),
(4, 2, NULL, 0, 'uova01'),
(4, 4, 1.2000, 0, 'pecora');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indici per le tabelle `batch_archive`
--
ALTER TABLE `batch_archive`
  ADD PRIMARY KEY (`archive_id`);

--
-- Indici per le tabelle `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`DISH`),
  ADD UNIQUE KEY `DISH_2` (`DISH`),
  ADD KEY `DISH` (`DISH`);

--
-- Indici per le tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ORDER_ID`) USING BTREE,
  ADD KEY `DISH_O` (`DISH_O`);

--
-- Indici per le tabelle `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indici per le tabelle `recipe`
--
ALTER TABLE `recipe`
  ADD KEY `DISH_NAME` (`DISH_NAME`),
  ADD KEY `PROD_R_ID` (`PROD_R_ID`);

--
-- Indici per le tabelle `rest_inventory`
--
ALTER TABLE `rest_inventory`
  ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Indici per le tabelle `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indici per le tabelle `supplier_products`
--
ALTER TABLE `supplier_products`
  ADD PRIMARY KEY (`supplier_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `batch`
--
ALTER TABLE `batch`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT per la tabella `batch_archive`
--
ALTER TABLE `batch_archive`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT per la tabella `rest_inventory`
--
ALTER TABLE `rest_inventory`
  MODIFY `PRODUCT_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT per la tabella `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `batch`
--
ALTER TABLE `batch`
  ADD CONSTRAINT `batch_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `rest_inventory` (`PRODUCT_ID`),
  ADD CONSTRAINT `batch_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);

--
-- Limiti per la tabella `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`DISH_O`) REFERENCES `menu` (`DISH`);

--
-- Limiti per la tabella `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD CONSTRAINT `pending_orders_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `pending_orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `rest_inventory` (`PRODUCT_ID`);

--
-- Limiti per la tabella `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`DISH_NAME`) REFERENCES `menu` (`DISH`),
  ADD CONSTRAINT `recipe_ibfk_2` FOREIGN KEY (`PROD_R_ID`) REFERENCES `rest_inventory` (`PRODUCT_ID`);

--
-- Limiti per la tabella `supplier_products`
--
ALTER TABLE `supplier_products`
  ADD CONSTRAINT `supplier_products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `supplier_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `rest_inventory` (`PRODUCT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
