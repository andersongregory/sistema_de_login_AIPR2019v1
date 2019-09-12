-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Set-2019 às 16:38
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemadelogin`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nomeUsuario` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `senha` char(40) COLLATE utf8mb4_bin NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `avatar_url` varchar(220) COLLATE utf8mb4_bin NOT NULL,
  `token` char(10) COLLATE utf8mb4_bin NOT NULL,
  `tempo_de_vida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `nomeUsuario`, `email`, `senha`, `dataCriacao`, `avatar_url`, `token`, `tempo_de_vida`) VALUES
(1, 'Dinossauro Rexnux', 'dinonux', 'dinonux@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:07:23', 'https://tarcnux.files.wordpress.com/2011/12/tarcnux_dez_2011_com_a_cabec3a7a_nas_nuvens.jpg', '', '2019-09-12 19:33:04'),
(2, 'Topo Gigio', 'topogigio', 'gigio@bol.com.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-06 16:23:38', 'https://3.bp.blogspot.com/_d-lesN9Fpho/TFIazIlq5VI/AAAAAAAAABs/3YxA0Zns9Wc/w1200-h630-p-k-no-nu/topo_gigio_08.jpg', '', '2019-09-12 19:33:04'),
(3, 'Gregory Anderson', 'Haleesz7', 'gregory@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-12 13:40:23', 'http://s2.glbimg.com/k9S_nEXQns81MzLlZO61JyCwqRM=/0x0:694x363/695x364/s.glbimg.com/po/tt2/f/original/2015/07/01/snapchat-flashy-features.jpg', '', '2019-09-12 19:33:04');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
