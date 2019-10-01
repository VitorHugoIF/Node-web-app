-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Out-2019 às 04:11
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbmusics`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmusics`
--

CREATE TABLE `tbmusics` (
  `fMusicID` int(10) UNSIGNED ZEROFILL NOT NULL,
  `fYear` int(11) DEFAULT NULL,
  `fName` varchar(255) DEFAULT NULL,
  `fUrl` varchar(1000) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbmusics`
--

INSERT INTO `tbmusics` (`fMusicID`, `fYear`, `fName`, `fUrl`, `createdAt`, `updatedAt`) VALUES
(0000000001, 1950, 'Lollipop - The Chordettes', 'https://www.youtube.com/embed/A0kd-w7Xwd8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000002, 1950, 'Why Do Fools Fall In Love - Frankie Lymon & The Teenagers', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000003, 1950, 'Yakety Yak - The Coasters', 'https://www.youtube.com/embed/-WfDYssJMqs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000004, 1950, 'Runaround Sue - 1991 – Remaster – Dion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000005, 1950, 'Summertime Blues - Eddie Cochran', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000006, 1950, 'Dream Lover - Bobby Darin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000007, 1950, 'Banana Boat Song (Day-O) - Harry Belafonte', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000008, 1950, 'Long Tall Sally - Little Richard', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000009, 1950, 'Runaway - Del Shannon', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000010, 1950, 'Duke Of Earl - Gene Chandler', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000011, 1960, 'It\'s Your Thing - The Isley Brothers', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000012, 1960, 'Green Onions (45 version) - Booker T. & The MG\'s', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000013, 1960, 'Happy Together - The Turtles', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000014, 1960, 'For What It\'s Worth - Buffalo Springfield', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000015, 1960, 'Try A Little Tenderness - Otis Redding', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000016, 1960, 'Mr. Tambourine Man - Bob Dylan', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000017, 1960, 'The Ghetto - Donny Hathaway', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000018, 1960, 'Like a Rolling Stone - Bob Dylan', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000019, 1960, 'Harlem Shuffle - Bob & Earl', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000020, 1960, 'Son Of A Preacher Man - Dusty Springfield', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000021, 1970, 'September - Earth/ Wind & Fire', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000022, 1970, 'Tiny Dancer - Elton John', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000023, 1970, 'Evil Woman - Electric Light Orchestra', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000024, 1970, 'Dreams - Fleetwood Mac', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000025, 1970, 'A Horse with No Name – America', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000026, 1970, 'Hooked on a Feeling - Blue Swede', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000027, 1970, 'Play That Funky Music - Wild Cherry', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000028, 1970, 'Don\'t Stop \'Til You Get Enough - 2003 Edit - Michael Jackson', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000029, 1970, 'I Want You Back - Jackson 5', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000030, 1970, 'Go Your Own Way - Fleetwood Mac', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000031, 1980, 'Don\'t Stop Believin\' – Journey', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000032, 1980, 'I Wanna Dance with Somebody (Who Loves Me) - Whitney Houston', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000033, 1980, 'Billie Jean - Single Version - Michael Jackson', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000034, 1980, 'Africa – Toto', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000035, 1980, 'Girls Just Want to Have Fun - Cyndi Lauper', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000036, 1980, 'Take On Me - a-ha', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000037, 1980, 'Eye of the Tiger – Survivor', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000038, 1980, 'Sweet Dreams (Are Made of This) - Remastered Version – Eurythmics', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000039, 1980, 'Don\'t You (Forget About Me) - Simple Minds', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000040, 1980, 'Jessie\'s Girl - Rick Springfield', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000041, 1990, 'Wannabe - Spice Girls', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000042, 1990, 'Under The Bridge - Red Hot Chili Peppers', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000043, 1990, 'Waterfalls – TLC', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000044, 1990, 'Pretty Fly (For a White Guy) - The Offspring', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000045, 1990, 'Inside Out - Eve 6', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000046, 1990, 'I Don\'t Want to Miss a Thing – Aerosmith', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000047, 1990, 'Everybody (Backstreet\'s Back) - Backstreet Boys', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000048, 1990, 'Semi-Charmed Life - Third Eye Blind', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000049, 1990, 'How\'s It Going To Be - Third Eye Blind', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000050, 1990, 'Drive – Incubus', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000051, 2000, 'It Wasn\'t Me – Shaggy', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000052, 2000, 'Yeah! – Usher', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000053, 2000, 'Always On Time - Ja Rule', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000054, 2000, 'Crazy in Love – Beyoncé', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000055, 2000, 'In Da Club - 50 Cent', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000056, 2000, 'Ignition (Remix) - R. Kelly', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000057, 2000, 'Dilemma – Nelly', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000058, 2000, 'Suga Suga - Baby Bash', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000059, 2000, 'Hey Ya! - Radio Mix / Club Mix – OutKast', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000060, 2000, 'One, Two Step – Ciara', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbmusics`
--
ALTER TABLE `tbmusics`
  ADD PRIMARY KEY (`fMusicID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbmusics`
--
ALTER TABLE `tbmusics`
  MODIFY `fMusicID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
