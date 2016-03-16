-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 15-Mar-2016 às 18:50
-- Versão do servidor: 5.5.42-37.1
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `meu_cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `sobrenome` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(6) NOT NULL,
  `complemento` int(4) NOT NULL,
  `bairro` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `estado` text COLLATE utf8_unicode_ci NOT NULL,
  `cep` int(7) NOT NULL,
  `ddd` int(2) NOT NULL,
  `telefone` int(9) NOT NULL,
  `rg` text COLLATE utf8_unicode_ci NOT NULL,
  `cpf` int(11) NOT NULL,
  `curso` set('OPBV','DSLR','EDBV','BPAV') COLLATE utf8_unicode_ci DEFAULT '',
  `checkbox` point DEFAULT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `sobrenome`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `ddd`, `telefone`, `rg`, `cpf`, `curso`, `checkbox`, `email`, `login`, `senha`) VALUES
(1, '', '', '', 0, 0, '', '', '', 0, 0, 0, '', 0, '', '', '', '', ''),
(14, 'joao', 'mane', '', 0, 0, '', '', '-1', 0, 0, 2147483647, '2345436789', 2147483647, '', '', 'zuado1qw23e@gmail.com', 'audaz', 'qwesdfcvbg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`) COMMENT 'Usuário nº', ADD FULLTEXT KEY `nome` (`nome`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
