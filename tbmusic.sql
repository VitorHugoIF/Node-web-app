-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Set-2019 às 00:48
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
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbmusics`
--

INSERT INTO `tbmusics` (`fMusicID`, `fYear`, `fName`, `createdAt`, `updatedAt`) VALUES
(0000000001, 1950, 'Lollipop - The Chordettes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000002, 1950, 'Why Do Fools Fall In Love - Frankie Lymon & The Teenagers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000003, 1950, 'Yakety Yak - The Coasters', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000004, 1950, 'Runaround Sue - 1991 – Remaster – Dion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000005, 1950, 'Summertime Blues - Eddie Cochran', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000006, 1950, 'Dream Lover - Bobby Darin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000007, 1950, 'Banana Boat Song (Day-O) - Harry Belafonte', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000008, 1950, 'Long Tall Sally - Little Richard', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000009, 1950, 'Runaway - Del Shannon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000010, 1950, 'Duke Of Earl - Gene Chandler', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000011, 1960, 'It\'s Your Thing - The Isley Brothers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000012, 1960, 'Green Onions (45 version) - Booker T. & The MG\'s', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000013, 1960, 'Happy Together - The Turtles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000014, 1960, 'For What It\'s Worth - Buffalo Springfield', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000015, 1960, 'Try A Little Tenderness - Otis Redding', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000016, 1960, 'Mr. Tambourine Man - Bob Dylan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000017, 1960, 'The Ghetto - Donny Hathaway', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000018, 1960, 'Like a Rolling Stone - Bob Dylan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000019, 1960, 'Harlem Shuffle - Bob & Earl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000020, 1960, 'Son Of A Preacher Man - Dusty Springfield', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000021, 1970, 'September - Earth/ Wind & Fire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000022, 1970, 'Tiny Dancer - Elton John', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000023, 1970, 'Evil Woman - Electric Light Orchestra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000024, 1970, 'Dreams - Fleetwood Mac', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000025, 1970, 'A Horse with No Name – America', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000026, 1970, 'Hooked on a Feeling - Blue Swede', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000027, 1970, 'Play That Funky Music - Wild Cherry', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000028, 1970, 'Don\'t Stop \'Til You Get Enough - 2003 Edit - Michael Jackson', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000029, 1970, 'I Want You Back - Jackson 5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000030, 1970, 'Go Your Own Way - Fleetwood Mac', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000031, 1980, 'Don\'t Stop Believin\' – Journey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000032, 1980, 'I Wanna Dance with Somebody (Who Loves Me) - Whitney Houston', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000033, 1980, 'Billie Jean - Single Version - Michael Jackson', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000034, 1980, 'Africa – Toto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000035, 1980, 'Girls Just Want to Have Fun - Cyndi Lauper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000036, 1980, 'Take On Me - a-ha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000037, 1980, 'Eye of the Tiger – Survivor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000038, 1980, 'Sweet Dreams (Are Made of This) - Remastered Version – Eurythmics', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000039, 1980, 'Don\'t You (Forget About Me) - Simple Minds', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000040, 1980, 'Jessie\'s Girl - Rick Springfield', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000041, 1990, 'Wannabe - Spice Girls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000042, 1990, 'Under The Bridge - Red Hot Chili Peppers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000043, 1990, 'Waterfalls – TLC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000044, 1990, 'Pretty Fly (For a White Guy) - The Offspring', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000045, 1990, 'Inside Out - Eve 6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000046, 1990, 'I Don\'t Want to Miss a Thing – Aerosmith', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000047, 1990, 'Everybody (Backstreet\'s Back) - Backstreet Boys', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000048, 1990, 'Semi-Charmed Life - Third Eye Blind', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000049, 1990, 'How\'s It Going To Be - Third Eye Blind', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000050, 1990, 'Drive – Incubus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000051, 2000, 'It Wasn\'t Me – Shaggy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000052, 2000, 'Yeah! – Usher', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000053, 2000, 'Always On Time - Ja Rule', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000054, 2000, 'Crazy in Love – Beyoncé', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000055, 2000, 'In Da Club - 50 Cent', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000056, 2000, 'Ignition (Remix) - R. Kelly', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000057, 2000, 'Dilemma – Nelly', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000058, 2000, 'Suga Suga - Baby Bash', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000059, 2000, 'Hey Ya! - Radio Mix / Club Mix – OutKast', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0000000060, 2000, 'One, Two Step – Ciara', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
