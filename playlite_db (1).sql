-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 24 dec 2018 kl 05:03
-- Serverversion: 10.1.37-MariaDB
-- PHP-version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `playlite_db`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `game_title` varchar(50) DEFAULT NULL,
  `game_image` varchar(256) DEFAULT NULL,
  `game_desc` varchar(4000) DEFAULT NULL,
  `game_location` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `games`
--

INSERT INTO `games` (`id`, `game_title`, `game_image`, `game_desc`, `game_location`) VALUES
(50, 'Snake', 'https://i.imgur.com/VYppiiK.png', 'Eat the apple til you can eat no more. You are allowed to pass through walls', 'snake.php'),
(51, 'Breakout', 'https://i.imgur.com/nst2qfZ.png', 'Play ping pong with yourself but don\'t let the ball bounce off the ground!', 'breakout.php'),
(52, 'Tic tac toe', 'https://i.imgur.com/4NX1PZn.png', 'Try to win against the AI in a a round of tic-tac-toe', 'Tictac.php'),
(53, 'Cupcake catcher', 'https://i.imgur.com/1gzKjBY.png', 'Eat as many cupcakes as you can. The fruits are way too healthy. Make sure you don\'t fall down', 'cupcake.php'),
(56, 'Under development', 'https://i.imgur.com/qJm7wUg.png', 'Under development', ''),
(58, 'Under development2', 'https://i.imgur.com/qJm7wUg.png', 'Under development', '');

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_first` varchar(256) NOT NULL,
  `user_last` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `user_uid` varchar(256) NOT NULL,
  `user_password` varchar(256) NOT NULL,
  `user_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`user_id`, `user_first`, `user_last`, `user_email`, `user_uid`, `user_password`, `user_admin`) VALUES
(36, 'a', 'a', 'Aramyako@hotmail.com1', 'a', '$2y$10$uA1qV2S3Pa2BnzSdEEOZyepgTYr9BuKrSymdroYDSwafFwf3M8g0m', 1),
(37, 'Aram', 'Yako', 'Aramyako@hotmail.com', 'Admin', '$2y$10$eCqDFf6zoSyGjMrnpRRL2euLxYPlWXtROhHni4z5Cl974sIoebYdK', 1),
(38, 'test', 'test', 'test@live.se', 'test', '$2y$10$VjpMdMaTFN9KjFxq3vp1guMZCIN4AVA.53ifkpBfBPnGdmEt8T5eG', 1),
(39, 'CyprexCNR', 'SphX', 'Aramyako@hotmail.com3', 'AdminTest', '$2y$10$l/Ru44cBdi1NLwUG4dVqE.0xmEyYsBnXwp5mhfHGPGyyMpk8yFdZe', 0),
(40, 'CyprexCNR', 'SphX', 'Aramyako@hotmail.com33', '12123', '$2y$10$RF2e0tRF5eK1iXYH8P0sP.LEZG9ANh2MWRn8wfyqCS7/yqyCQqKbu', 1),
(41, 'a', 'a', 'Aramyako@hotmail.com22222', 'aaaaaa', '$2y$10$zmSdVFsijK3GNBWBADbc/.ptiAzu5P7qPpb3BgSrWKVgMMHPB5lea', 0),
(42, 'aaa', 'aaaaa', 'Aramyako@hotmail.comaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaTestAdmin', '$2y$10$QipAb1Y1ctIBz1Z4oO.M2e5COsIcZ8xSwvF9tM2lyjwTyogWSnQ1W', 0),
(44, 'CyprexCNR', 'SphX', 'Aramyako@hotmail.comAdmin1', 'TestFunktioner', '$2y$10$4AYOlQfJewBgHCogd8Y4DujYpwRU29aGhiXoBgaxn/tnwR2ygvKPW', 1),
(45, 'CyprexCNR', 'SphX', 'Aramyako@hotmail.comAdmin2', 'testfunktion2', '$2y$10$YQlRdiiKkRVaQE4VEFYacOMV/QHXC2xUfYv/UsUdvNHKySyqKBYpe', 0);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
