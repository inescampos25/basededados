-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Jan-2025 às 11:45
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `leo_da_vinci`
--
CREATE DATABASE IF NOT EXISTS `leo_da_vinci` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `leo_da_vinci`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `criado` tinyint(1) NOT NULL,
  `atualizado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `ativo`, `nome`, `user`, `pass`, `criado`, `atualizado`) VALUES
(1, 1, 'ines campos', 'inescamposs', 'efdghjshushcbdgdvdg', 1, '0000-00-00'),
(2, 0, 'ines campos', 'okkkkk', 'kokkokokoko', 0, '0000-00-00'),
(3, 1, 'lllllll', 'lljl', 'lokouik', 1, '2025-01-31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `order`, `category`, `created`, `updated`) VALUES
(1, 1, 'ines', '2025-01-17 10:05:55', '2025-01-17 10:05:55'),
(2, 1, 'ines', '2025-01-17 10:05:57', '2025-01-17 10:05:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `dateorder` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(250) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id`, `iduser`, `dateorder`, `status`, `created`, `updated`) VALUES
(1, 1, '2025-01-24 10:02:16', 'kkkkkkkkkkk', '0000-00-00 00:00:00', '2025-01-17 10:03:13'),
(2, 1, '2025-01-17 10:03:33', 'kkkkkk', '2025-01-17 10:03:33', '2025-01-17 10:03:33'),
(3, 1, '2025-01-17 10:03:35', 'kkkkkk', '2025-01-17 10:03:35', '2025-01-17 10:03:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL,
  `idorder` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `qt` int(11) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `orders_products`
--

INSERT INTO `orders_products` (`id`, `idorder`, `idproduct`, `qt`, `value`, `created`, `updated`) VALUES
(1, 1, 1, 1, '1.00', '2025-01-17 10:04:03', '2025-01-17 10:04:03'),
(2, 1, 1, 11, '1.10', '2025-01-17 10:04:27', '2025-01-17 10:04:27'),
(3, 1, 1, 11, '1.10', '2025-01-17 10:04:29', '2025-01-17 10:04:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `idcategory` int(11) NOT NULL,
  `idsection` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `image` longblob NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `idcategory`, `idsection`, `order`, `title`, `description`, `image`, `status`, `created`, `updated`) VALUES
(1, 0, 0, 0, 'Inês Miguel Braga Azevedo Campos', 'Sou a inês campos, tenho 16 anos, sou de fradelos e tou quase a fazer 17 anos.', 0x68636a666868, 0, '2025-01-17 09:49:45', '2025-01-17 09:49:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages_categories`
--

CREATE TABLE `pages_categories` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pages_categories`
--

INSERT INTO `pages_categories` (`id`, `order`, `category`, `created`, `updated`) VALUES
(1, 1, 'ines campinhos', '2025-01-17 10:06:31', '2025-01-17 10:06:31'),
(2, 1, 'ines campinhos', '2025-01-17 10:06:35', '2025-01-17 10:06:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `idcategory` int(11) NOT NULL,
  `product` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `idcategory`, `product`, `description`, `value`, `stock`, `created`, `updated`) VALUES
(1, 1, 'iinesscamposs', 'eram tres patinhos e foram passiar abandando o rabinho para saber nadar', '1.10', 2, '2025-01-17 10:08:02', '2025-01-17 10:08:02'),
(2, 1, 'iinesscamposs', 'eram tres patinhos e foram passiar abandando o rabinho para saber nadar', '1.10', 2, '2025-01-17 10:08:07', '2025-01-17 10:08:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sections`
--

INSERT INTO `sections` (`id`, `order`, `section`, `created`, `updated`) VALUES
(1, 1, 'kkakakakakakakakakakakakakakakakakakakaka\r\n', '2025-01-17 10:08:33', '2025-01-17 10:08:33'),
(2, 1, 'kkakakakakakakakakakakakakakakakakakakaka\r\n', '2025-01-17 10:08:42', '2025-01-17 10:08:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `user` text NOT NULL,
  `pass` text NOT NULL,
  `email` text NOT NULL,
  `datanascimento` date NOT NULL,
  `criado` tinyint(1) NOT NULL,
  `atualizado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `ativo`, `nome`, `user`, `pass`, `email`, `datanascimento`, `criado`, `atualizado`) VALUES
(1, 1, 'ines miguel braga azevedo campos', 'inessssscampossss', 'czfggrjhetgjrh', 'ines@hjuhgtvnk.com', '2025-01-25', 1, '2025-01-30'),
(2, 1, 'ines miguel braga azevedo campos', 'inessssscampossss', 'czfggrjhetgjrh', 'ines@hjuhgtvnk.com', '2025-01-25', 1, '2025-01-30');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pages_categories`
--
ALTER TABLE `pages_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pages_categories`
--
ALTER TABLE `pages_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
