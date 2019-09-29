-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Set-2019 às 18:29
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
-- Estrutura da tabela `tbmusic`
--

CREATE TABLE `tbmusic` (
  `fMusicID` int(11) NOT NULL,
  `fYear` int(11) NOT NULL,
  `fName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbmusic`
--

INSERT INTO `tbmusic` (`fMusicID`, `fYear`, `fName`) VALUES
(1, 1950, 'Lollipop - The Chordettes'),
(2, 1950, 'Why Do Fools Fall In Love - Frankie Lymon & The Teenagers'),
(3, 1950, 'Yakety Yak - The Coasters'),
(4, 1950, 'Runaround Sue - 1991 – Remaster – Dion'),
(5, 1950, 'Summertime Blues - Eddie Cochran'),
(6, 1950, 'Dream Lover - Bobby Darin'),
(7, 1950, 'Banana Boat Song (Day-O) - Harry Belafonte'),
(8, 1950, 'Long Tall Sally - Little Richard'),
(9, 1950, 'Runaway - Del Shannon'),
(10, 1950, 'Duke Of Earl - Gene Chandler'),
(11, 1960, 'It\'s Your Thing - The Isley Brothers'),
(12, 1960, 'Green Onions (45 version) - Booker T. & The MG\'s'),
(13, 1960, 'Happy Together - The Turtles'),
(14, 1960, 'For What It\'s Worth - Buffalo Springfield'),
(15, 1960, 'Try A Little Tenderness - Otis Redding'),
(16, 1960, 'Mr. Tambourine Man - Bob Dylan'),
(17, 1960, 'The Ghetto - Donny Hathaway'),
(18, 1960, 'Like a Rolling Stone - Bob Dylan'),
(19, 1960, 'Harlem Shuffle - Bob & Earl'),
(20, 1960, 'Son Of A Preacher Man - Dusty Springfield'),
(21, 1970, 'September - Earth/ Wind & Fire'),
(22, 1970, 'Tiny Dancer - Elton John'),
(23, 1970, 'Evil Woman - Electric Light Orchestra'),
(24, 1970, 'Dreams - Fleetwood Mac'),
(25, 1970, 'A Horse with No Name – America'),
(26, 1970, 'Hooked on a Feeling - Blue Swede'),
(27, 1970, 'Play That Funky Music - Wild Cherry'),
(28, 1970, 'Don\'t Stop \'Til You Get Enough - 2003 Edit - Michael Jackson'),
(29, 1970, 'I Want You Back - Jackson 5'),
(30, 1970, 'Go Your Own Way - Fleetwood Mac'),
(31, 1980, 'Don\'t Stop Believin\' – Journey'),
(32, 1980, 'I Wanna Dance with Somebody (Who Loves Me) - Whitney Houston'),
(33, 1980, 'Billie Jean - Single Version - Michael Jackson'),
(34, 1980, 'Africa – Toto'),
(35, 1980, 'Girls Just Want to Have Fun - Cyndi Lauper'),
(36, 1980, 'Take On Me - a-ha'),
(37, 1980, 'Eye of the Tiger – Survivor'),
(38, 1980, 'Sweet Dreams (Are Made of This) - Remastered Version – Eurythmics'),
(39, 1980, 'Don\'t You (Forget About Me) - Simple Minds'),
(40, 1980, 'Jessie\'s Girl - Rick Springfield'),
(41, 1990, 'Wannabe - Spice Girls'),
(42, 1990, 'Under The Bridge - Red Hot Chili Peppers'),
(43, 1990, 'Waterfalls – TLC'),
(44, 1990, 'Pretty Fly (For a White Guy) - The Offspring'),
(45, 1990, 'Inside Out - Eve 6'),
(46, 1990, 'I Don\'t Want to Miss a Thing – Aerosmith'),
(47, 1990, 'Everybody (Backstreet\'s Back) - Backstreet Boys'),
(48, 1990, 'Semi-Charmed Life - Third Eye Blind'),
(49, 1990, 'How\'s It Going To Be - Third Eye Blind'),
(50, 1990, 'Drive – Incubus'),
(51, 2000, 'It Wasn\'t Me – Shaggy'),
(52, 2000, 'Yeah! – Usher'),
(53, 2000, 'Always On Time - Ja Rule'),
(54, 2000, 'Crazy in Love – Beyoncé'),
(55, 2000, 'In Da Club - 50 Cent'),
(56, 2000, 'Ignition (Remix) - R. Kelly'),
(57, 2000, 'Dilemma – Nelly'),
(58, 2000, 'Suga Suga - Baby Bash'),
(59, 2000, 'Hey Ya! - Radio Mix / Club Mix – OutKast'),
(60, 2000, 'One, Two Step – Ciara');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbmusic`
--
ALTER TABLE `tbmusic`
  ADD PRIMARY KEY (`fMusicID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbmusic`
--
ALTER TABLE `tbmusic`
  MODIFY `fMusicID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
