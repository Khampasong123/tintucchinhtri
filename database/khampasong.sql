-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 02:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khampasong`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(20, 'International Politics', 3),
(13, 'Hot News', 0),
(19, 'National Politics', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(56, 'Có nên bán ??t ven bi?n ?? ??u t? chung c? mini?', 'Có nên bán ?Có nên bán ??t ven bi?n ?? ??u t? chung c? mini?Có nên bán ??t ven bi?n Có nên bán ??t ven bi?n ?? ??u t? chung c? mini?Có nên bán ??t ven bi?n ?? ??u t? chung c? mini??? ??u t? chung c? mini??t ven bi?n ?? ??u t? chung c? mini?', '12', '07 Sep, 2023', 40, '1694094295-images.jpg'),
(57, 'What happens next now that Kevin McCarthy has been ousted as speaker', 'The Office of the Speaker has been declared vacant. This does not immediately trigger a new speaker election, however, because of a succession list McCarthy, R-Calif., submitted to the House clerk in January. That list isn\'t public.\r\n\r\nBut Rep. Patrick McHenry, R-N.C., revealed shortly after McCarthy was removed that his name tops that list. McHenry will now serve as a temporary replacement under House rules.\r\n\r\nSince 2003, House rules have required the speaker to submit a list of names to the clerk of members to act in the case of his or her vacancy. According to Rule I, clause 8 of the House rules, the next person on that list “shall act as Speaker pro tempore until the election of a Speaker or a Speaker pro tempore.” We now know that\'s Patrick McHenry; he\'ll take over as speaker in an acting capacity.\r\n\r\nThis is a different situation than in January, when the House started a new session and could not start any legislative business until a speaker was elected. Because it was the beginning of a new Congress, the House needed to elect a speaker in order to swear in members and pass the rules package.\r\n\r\nMcHenry suggested that members should meet in their party conferences before deciding on the path forward. An election for a permanent speaker could be delayed until the House is better prepared.', '19', '04 Oct, 2023', 40, '1696410596-0a05d668c6bb12e54baa.jpg'),
(58, 'ow Vivek Ramaswamy turned his elite education into a degree in devil\'s advocacy', 'When Harvard was renegotiating a contract with janitors and other workers in the fall of 2005, many students pushed the nation’s oldest and wealthiest university to pay a living wage.\r\n\r\nVivek Ramaswamy, then a politically active biology major, led the dissent. Writing for the school newspaper, he argued that a raise would come “at the cost of respect that the rest of the Harvard community has for these workers.” And in Listserv emails obtained by NBC News, he bemoaned the student government’s involvement in the debate, citing the recently bungled planning of a Wyclef Jean concert.\r\n\r\n“Their duty to perform these basic tasks,” Ramaswamy, now a Republican candidate for president, wrote to Ali Zaidi, then a student government official, now President Joe Biden’s top climate policy adviser, supersedes “their prerogative to make political statements on behalf of the student body.”\r\n\r\nIt was neither the first nor last time that Ramaswamy earned his reputation as a disruptive brainiac who was willing, and even eager, to dance on political third rails and challenge conventions. \r\n\r\nThat eagerness would come to define Ramaswamy at a trio of top institutions — St. Xavier High School in Cincinnati, Harvard and Yale Law School — where classmates recalled a pugnacious student who centered debate in his educational life and always seemed to push his takes past their logical endpoint.\r\n\r\n“He was known in the class as the devil’s advocate,” one former law school classmate said. “And at a certain point, if someone is always playing the devil’s advocate, you have to kind of wonder whether he’s actually the devil.”\r\n\r\nThe son of Indian immigrants from Ohio and the product of elite East Coast institutions that make convenient foils for culture warriors like him, Ramaswamy arrived on the national scene this year as a surprise White House contender.\r\n\r\nThe 38-year-old literally wrote the book on “anti-wokeism.” He has rapped to Eminem, dabbled in 9/11 conspiracy theories and gleefully taken on a field of more traditional primary candidates all while avoiding the ordinarily inescapable wrath of former President Donald Trump.', '19', '04 Oct, 2023', 40, '1696410833-91b8f58bd45800065949.jpg'),
(59, 'U.S. readout excludes India-Canada rift as Blinken meets India’s top diplomat', 'Both countries have responded with reciprocal expulsions of senior diplomats. Canada also halted trade negotiations, while India suspended visa processing services for Canadians and demanded parity in diplomatic staffing, effectively forcing Ottawa to reduce its diplomatic staff numbers in India.\r\n\r\nThe deepening rift between the two sides is concerning Canada’s closest allies — Australia, the United Kingdom and the United States. If allegations are true, this may well derail the U.S. courtship of India as a partner in a broader Indo-Pacific strategy aimed at countering China.', '20', '04 Oct, 2023', 40, '1696411070-e3a0542278f1acaff5e0.jpg'),
(60, 'House ousts Kevin McCarthy as speaker, a first in U.S. history', 'McCarthy told colleagues Tuesday evening that he will not be running for speaker again, NBC News reported. In his first remarks since losing the speakership, McCarthy said he “wouldn’t change a thing,” and that he feels “fortunate” to have served as speaker.\r\n\r\nMcCarthy’s ouster was effectively set in quick motion on Saturday when he pulled off a surprising legislative victory, getting Democrats to join Republicans in approving a short-term funding bill that avoided a government shutdown.\r\n\r\nWhile McCarthy pleased the White House with that move, it fueled already simmering resentments over his leadership among far-right members of the GOP caucus.\r\n\r\nSeveral of McCarthy’s supporters have said they plan to offer his name for the next round of speaker votes.\r\n\r\nBut other members of GOP leadership have also been floated as potential replacements, including Majority Whip Tom Emmer of Minnesota and Majority Leader Steve Scalise of Louisiana. Both of them are popular among rank-and-file Republicans.\r\n\r\nThe last time a motion to vacate vote occurred on the House floor was in 1910, when then-Republican Speaker Joseph Cannon survived it.\r\n\r\nMcCarthy’s hold on the speakership had been tenuous since he was elected in January, due to a small clique led by Gaetz who are unhappy with the Californian.\r\n\r\nOne source told NBC News on Tuesday that some McCarthy allies were “begging” a number of Democratic House members to vote with them to save his speakership.\r\n\r\n“We need Kevin McCarthy to remain as our speaker,” Emmer said during the debate. “We’re going to stay focused on our mission of delivering common sense wins for the American people.”\r\n\r\nGaetz said, “The one thing that the White House, Democrats and many of us on the conservative side of the Republican caucus have in common is McCarthy said something to all of us at one point that he didn’t really mean and never intended to live up to.”\r\n\r\n“There’s nothing selfish about wanting a speaker of the House who tells the truth,” he said.', '20', '04 Oct, 2023', 40, '1696411156-1190624e579d83c3da8c.jpg'),
(62, 'National conference popularising resolutions of Party Central Committee’s 8th session', 'Hanoi (VNA) – The Politburo and the Secretariat of the Party Central Committee on December 4 jointly organised a national conference on popularisation and studying of the resolution released at the eight session of the 13th Party Central Committee.\r\nThe hybrid conference, drawing more than 1.44 million delegates across the country, focuses on core issues and new features of the resolution, thus enhancing officials and Party members’ awareness of their responsibility in implementing tasks set in the resolution.\r\nThe conference enables Party Committees, Party Organisations and ministries, sectors and localities to continue to popularise the resolution to the lower level, and build their own plans and action programmes to implement the resolution in a practical and effective manner.', '21', '04 Dec, 2023', 40, '1701706113-Hinh3.jpg'),
(63, 'Vietnam, Japan issue joint statement on elevation of relations to comprehensive strategic partnershi', 'Vietnam and Japan on November 27 issued a joint statement on the elevation of their relations to a comprehensive strategic partnership for peace and prosperity in Asia and the world on the occasion of official visit to Japan by President Vo Van Thuong and his spouse.\r\nTokyo (VNA) – Vietnam and Japan on November 27 issued a joint statement on the elevation of their relations to a comprehensive strategic partnership for peace and prosperity in Asia and the world on the occasion of official visit to Japan by President Vo Van Thuong and his spouse.\r\nThe following of the full text of the Joint statement:\r\nAt the invitation of Japan, H.E. Mr. Vo Van Thuong, President of the Socialist Republic of Vietnam, and Madam Phan Thi Thanh Tam made an official visit to Japan from 27 to 30 November 2023. During the visit, Their Majesties the Emperor and Empress meet with and host a court luncheon in honor of President Thuong and Madam. H.E. Mr. KISHIDA Fumio, Prime Minister of Japan, and President Thuong attended the ceremony by Guard of Honor, held the summit meeting, attended the joint press conference, and witnessed the signing ceremony of cooperation documents. President Thuong also delivered his policy speech at the National Diet of Japan and visited Fukuoka Prefecture.', '20', '04 Dec, 2023', 40, '1701707186-Hinh4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(60) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`websitename`, `logo`, `footerdesc`) VALUES
('Tin Tuc Chinh tri', 'logo.jpg', '© Copyright Keobounthone Khampasong ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(40, 'Khampasong', 'keobounthone', 'khampasong', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
