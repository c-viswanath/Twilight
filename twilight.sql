-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 07:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twilight`
--

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `Username` varchar(20) DEFAULT NULL,
  `Song_id` varchar(18) DEFAULT NULL,
  `playlist_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `Song_name` varchar(100) DEFAULT NULL,
  `Song_id` varchar(20) NOT NULL,
  `Artist` varchar(20) DEFAULT NULL,
  `Year` date DEFAULT NULL,
  `Genre` varchar(10) DEFAULT NULL,
  `Language` varchar(20) DEFAULT NULL,
  `No_of_plays` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`Song_name`, `Song_id`, `Artist`, `Year`, `Genre`, `Language`, `No_of_plays`) VALUES
('Aarambhame_le', 'AarAni019FilTel', 'Anirudh Ravichender', '0000-00-00', 'Film pop', 'Telugu', 512),
('Alone,Pt.II', 'AloAla021IndEng', 'Alan Walker', '0000-00-00', 'Indie', 'English', 549),
('Animals', 'AniMar015RocEng', 'Maroon 5', '0000-00-00', 'Rock', 'English', 302),
('Arcade', 'ArcDun020PopEng', 'Duncan Laurence', '0000-00-00', 'Pop', 'English', 76),
('Astronaut_In_The_Ocean', 'AstMas019HipEng', 'Masked Wolf', '0000-00-00', 'Hip Hop', 'English', 89),
('Astronomia', 'AstVin010RusRus', 'Vincetone', '0000-00-00', 'Russian', 'Russian', 119),
('As_It_Was', 'As_Har022PopEng', 'Harry Styles', '0000-00-00', 'Pop', 'English', 323),
('Attention', 'AttCha017PopEng', 'Charlie Puth', '0000-00-00', 'Pop', 'English', 61),
('A_Thousand_Years', 'A_TChr011PopEng', 'Christina Perri', '0000-00-00', 'Pop', 'English', 184),
('Baby', 'BabJus010PopEng', 'Justin Beiber', '0000-00-00', 'Pop', 'English', 265),
('bad_guy', 'badBil019EleEng', 'Billie Eilish', '0000-00-00', 'Electronic', 'English', 811),
('Bad_Liar', 'BadIma018IndEng', 'Imagine Dragons', '0000-00-00', 'Indie', 'English', 713),
('Bananza', 'BanAko004HipEng', 'Akon', '0000-00-00', 'Hip Hop', 'English', 910),
('Believer', 'BelIma017RocEng', 'Imagine Dragons', '0000-00-00', 'Rock', 'English', 352),
('Bella_Ciao', 'BelMan020FolSpa', 'Manu Pilas', '0000-00-00', 'Folk', 'Spanish', 175),
('Blue_eyes', 'BluHon013FilHin', 'Honey Singh', '0000-00-00', 'Film pop', 'Hindi', 961),
('Bones', 'BonIma022PopEng', 'Imagine Dragons', '0000-00-00', 'Pop', 'English', 723),
('Boomerang', 'BooJay017RocEng', 'Jay Smith', '0000-00-00', 'Rock', 'English', 108),
('Brofist', 'BroPew019PopEng', 'Pewdiepie', '0000-00-00', 'Pop', 'English', 921),
('Build_A_Bitch', 'BuiBel021IndEng', 'Bella Poarch', '0000-00-00', 'Indie', 'English', 322),
('Butta_Bomma', 'ButArm019FilTel', 'Armaan Malik', '0000-00-00', 'Film pop', 'Telugu', 141),
('Chained_to_the_Rhythm', 'ChaKat017PopEng', 'Katy Perry', '0000-00-00', 'Pop', 'English', 344),
('Chandelier', 'ChaSia014PopEng', 'Sia', '0000-00-00', 'Pop', 'English', 685),
('Cheap_Thrills', 'CheSia016PopEng', 'Sia', '0000-00-00', 'Pop', 'English', 642),
('Closer', 'CloThe016EleEng', 'The Chainsmokers', '0000-00-00', 'Electronic', 'English', 528),
('Copines', 'CopAya018R&BFre', 'Aya Nakamura', '0000-00-00', 'R&B/Soul', 'French', 775),
('Cornfield_Chase', 'CorHan014FilIns', 'Hans Zimmer', '0000-00-00', 'Film', 'Instrumental', 699),
('Cradles', 'CraSub019IndEng', 'Sub Urban', '0000-00-00', 'Indie', 'English', 822),
('Dandelions', 'DanRut017PopEng', 'Ruth B', '0000-00-00', 'Pop', 'English', 531),
('Darkside', 'DarAla018EleEng', 'Alan Walker', '0000-00-00', 'Electronic', 'English', 759),
('Dear_Alcohol', 'DeaDax022PopEng', 'Dax', '0000-00-00', 'Pop', 'English', 555),
('Despacito', 'DesLui017RegSpa', 'Luis Fonsi', '0000-00-00', 'Reggaeton', 'Spanish', 858),
('Dheera_Dheera', 'DheRav018FilKan', 'Ravi Basrur', '0000-00-00', 'Film pop', 'Kannada', 378),
('Die_for_you', 'DieGra016R&BEng', 'Grabbitz', '0000-00-00', 'R&B/Soul', 'English', 154),
('Dolls', 'DolBel022IndEng', 'Bella Poarch', '0000-00-00', 'Indie', 'English', 177),
('Duel_Of_The_Fates', 'DueJoh012ClaEng', 'John Williams', '0000-00-00', 'Classical', 'English', 597),
('Earth', 'EarLil019HipEng', 'Lil Dicky', '0000-00-00', 'Hip Hop', 'English', 749),
('End_Of_Time', 'EndAla020PopEng', 'Alan Walker', '0000-00-00', 'Pop', 'English', 540),
('Enemy', 'EneIma022IndEng', 'Imagine Dragons', '0000-00-00', 'Indie', 'English', 97),
('everytime', 'eveAri018PopEng', 'Ariana Grande', '0000-00-00', 'Pop', 'English', 67),
('Everything_I_Wanted', 'EveBil020PopEng', 'Billie Eilish', '0000-00-00', 'Pop', 'English', 561),
('everything_sucks', 'evevau022FilEng', 'vaultboy', '0000-00-00', 'Film pop', 'English', 843),
('Fire_Again', 'FirAsh022PopEng', 'Ashnikko', '0000-00-00', 'Pop', 'English', 79),
('Firefly', 'FirWhe017IndEng', 'When Chai Met Toast', '0000-00-00', 'Indie', 'English', 386),
('Freak', 'FreSub020IndEng', 'Sub Urban', '0000-00-00', 'Indie', 'English', 560),
('FRIENDS', 'FRIMar018PopEng', 'Marshmello', '0000-00-00', 'Pop', 'English', 772),
('Fur_Elise', 'FurBee810RomIns', 'Beethoven', '0000-00-00', 'Romantic', 'Instrumental', 915),
('Gangsta_Paradise', 'GanCoo995HipEng', 'Coolio', '0000-00-00', 'Hip Hop', 'English', 724),
('Godzilla', 'GodEmi020HipEng', 'Eminem', '0000-00-00', 'Hip Hop', 'English', 295),
('Golden_Hour', 'GolJVK022CouEng', 'JVKE', '0000-00-00', 'Country', 'English', 519),
('Happier', 'HapMar018PopEng', 'Marshmello', '0000-00-00', 'Pop', 'English', 998),
('Heat_Waves', 'HeaGla020PopEng', 'Glass Animals', '0000-00-00', 'Pop', 'English', 941),
('Hurts_So_Good', 'HurAst020PopEng', 'Astrid S', '0000-00-00', 'Pop', 'English', 956),
('Hymm_For_The_Weekend', 'HymCol015IndEng', 'Coldplay', '0000-00-00', 'Indie', 'English', 625),
('Ignite', 'IgnK-3018EleEng', 'K-391', '0000-00-00', 'Electronic', 'English', 834),
('Im_An_Albatroz', 'Im_Aro014EleSwe', 'Aron Chupa', '0000-00-00', 'Electronic', 'Swedish', 601),
('Industry_Baby', 'IndLil021HipEng', 'Lil Nas X', '0000-00-00', 'Hip Hop', 'English', 849),
('Inferno', 'InfBel021IndEng', 'Bella Poarch', '0000-00-00', 'Indie', 'English', 252),
('In_The_End', 'In_Lin000RocEng', 'Linkin Park', '0000-00-00', 'Rock', 'English', 236),
('Isme_Tera_Ghata', 'IsmGaj018FilHin', 'Gajender Varma', '0000-00-00', 'Film pop', 'Hindi', 483),
('Jalebi_Baby', 'JalJas021RegEng', 'Jason Derulo', '0000-00-00', 'Reggaeton', 'English', 39),
('Just_Beat_It', 'JusMic008PopEng', 'Micheal Jackson', '0000-00-00', 'Pop', 'English', 644),
('Kaadhal_en_Kaviye', 'KaaSid021FilTam', 'Sid Sriram', '0000-00-00', 'Film pop', 'Tamil', 488),
('Khoj(Passing_By)', 'KhoWhe018IndEng', 'When Chai Met Toast', '0000-00-00', 'Indie', 'English', 876),
('Kossandra', 'KosMiy020RusRus', 'Miyagi', '0000-00-00', 'Russian', 'Russian', 251),
('Legends_Never_Die', 'LegAga017EleEng', 'Against The Current', '0000-00-00', 'Electronic', 'English', 656),
('Legendary', 'LegWel016IndEng', 'Welshly Arms', '0000-00-00', 'Indie', 'English', 499),
('Let_Me_Down_Slowly', 'LetAle019PopEng', 'Alec Benjamin', '0000-00-00', 'Pop', 'English', 953),
('Let_Me_Love_You', 'LetJus016EleEng', 'Justin Beiber', '0000-00-00', 'Electronic', 'English', 698),
('Levitating', 'LevDua020EleEng', 'Dua Lipa', '0000-00-00', 'Electronic', 'English', 737),
('Lily', 'LilAla018EleEng', 'Alan Walker', '0000-00-00', 'Electronic', 'English', 407),
('Lose_Yourself', 'LosEmi002HipEng', 'Eminem', '0000-00-00', 'Hip Hop', 'English', 336),
('Lovely(with_Khalid)', 'LovBil018PopEng', 'Billie Eilish', '0000-00-00', 'Pop', 'English', 3651),
('love_nwantiti', 'lovCKa019AfrIgb', 'CKay', '0000-00-00', 'Afrobeats', 'Igbo', 237),
('Magenta_Riddim', 'MagDJ 019PopEng', 'DJ Snake', '0000-00-00', 'Pop', 'English', 703),
('Mask', 'MasDre020RocEng', 'Dream', '0000-00-00', 'Rock', 'English', 338),
('Mehbooba', 'MehRav022FilEng', 'Ravi Basrur', '0000-00-00', 'Film pop', 'English', 392),
('Mine_All_Day', 'MinPew019EleEng', 'Pewdiepie', '0000-00-00', 'Electronic', 'English', 438),
('Montero', 'MonLil021HipEng', 'Lil Nas X', '0000-00-00', 'Hip Hop', 'English', 726),
('Mood', 'MooIan020R&BEng', 'Iann Dorr', '0000-00-00', 'R&B/Soul', 'English', 979),
('Nemesis', 'NemRyl018EleIns', 'Ryllz', '0000-00-00', 'Electronic', 'Instrumental', 872),
('Night_Changes', 'NigOne015PopEng', 'One Direction', '0000-00-00', 'Pop', 'English', 924),
('Ninnila', 'NinArm018FilTel', 'Armaan Malik', '0000-00-00', 'Film pop', 'Telugu', 897),
('Not_Afraid', 'NotEmi010HipEng', 'Eminem', '0000-00-00', 'Hip Hop', 'English', 587),
('Ocean_Eyes', 'OceBil020PopEng', 'Billie Eilish', '0000-00-00', 'Pop', 'English', 580),
('Old_Town_Road', 'OldLis019PopEng', 'Lis Nas X', '0000-00-00', 'Pop', 'English', 261),
('One_Kiss', 'OneDua018PopEng', 'Dua Lipa', '0000-00-00', 'Pop', 'English', 881),
('Oo_Antava_Oo_Oo_Antava', 'Oo_Ind020EleTel', 'Indravathi Chauhan', '0000-00-00', 'Electronic', 'Telugu', 683),
('Paris', 'ParThe017PopEng', 'The Chainsmokers', '0000-00-00', 'Pop', 'English', 459),
('Peaches', 'PeaJus021PopEng', 'Justin Beiber', '0000-00-00', 'Pop', 'English', 597),
('Perfect', 'PerEd 017PopEng', 'Ed Sheeran', '0000-00-00', 'Pop', 'English', 212),
('Playground(Arcane)', 'PlaBea021HipEng', 'Bea Miller', '0000-00-00', 'Hip Hop', 'English', 603),
('Play', 'PlaK-3019EleEng', 'K-391', '0000-00-00', 'Electronic', 'English', 893),
('Radio_Active', 'RadIma012PopEng', 'Imagine Dragons', '0000-00-00', 'Pop', 'English', 257),
('Rap_God', 'RapEmi013HipEng', 'Eminem', '0000-00-00', 'Hip Hop', 'English', 896),
('Roadtrip', 'RoaDre021PopEng', 'Dream', '0000-00-00', 'Pop', 'English', 846),
('Rockabye', 'RocCle018PopEng', 'Clean Bandit', '0000-00-00', 'Pop', 'English', 609),
('Rooftop', 'RooNic018PopEng', 'Nico Santos', '0000-00-00', 'Pop', 'English', 71),
('Runaway', 'RunAur016EleEng', 'Aurora', '0000-00-00', 'Electronic', 'English', 923),
('Satisfya', 'SatImr019HipPun', 'Imran Khan', '0000-00-00', 'Hip Hop', 'Punjabi', 344),
('See_You_Again', 'SeeWiz015PopEng', 'Wiz Khalifa', '0000-00-00', 'Pop', 'English', 69),
('Senorita', 'SenSha019PopEng', 'Shawn Mendes', '0000-00-00', 'Pop', 'English', 77),
('Shape_Of_You', 'ShaEd 017PopEng', 'Ed Sheeran', '0000-00-00', 'Pop', 'English', 136),
('Sher_Aya_Sher', 'SheDIV019FilHin', 'DIVINE', '0000-00-00', 'Film pop', 'Hindi', 632),
('Someone_To_You_', 'SomBan019RocEng', 'Banners', '0000-00-00', 'Rock', 'English', 405),
('Something_Just_Like_This', 'SomThe017PopEng', 'The Chainsmokers', '0000-00-00', 'Pop', 'English', 507),
('	Song_name', 'Song_id', 'Artist', '0000-00-00', 'Genre', 'Language', 0),
('Sorry_Not_Sorry', 'SorDem016EleEng', 'Demi Lovato', '0000-00-00', 'Electronic', 'English', 310),
('Star_Wars(Main_Theme)', 'StaJoh977FilIns', 'John Williams', '0000-00-00', 'Film pop', 'Instrumental', 240),
('STAY', 'STAJus021RocEng', 'Justin Beiber', '0000-00-00', 'Rock', 'English', 41),
('Stereo_Hearts', 'SteGym011EleEng', 'Gym Class Heroes', '0000-00-00', 'Electronic', 'English', 143),
('Still_D.R.E', 'StiDr.001HipEng', 'Dr. Dre', '0000-00-00', 'Hip Hop', 'English', 629),
('Streets', 'StrDoj019R&BEng', 'Doja Cat', '0000-00-00', 'R&B/Soul', 'English', 722),
('Sugarcrash!', 'SugEly020PopEng', 'ElyOtto', '0000-00-00', 'Pop', 'English', 996),
('Sunflower(Spider-Man)', 'SunPos018HipEng', 'Post Malone', '0000-00-00', 'Hip Hop', 'English', 874),
('Swalla(ft._Nicki_Minaj)', 'SwaJas017PopEng', 'Jason Derulo', '0000-00-00', 'Pop', 'English', 941),
('Taki_Taki', 'TakDJ 018EleEng', 'DJ Snake', '0000-00-00', 'Electronic', 'English', 565),
('The_Avengers', 'TheAla012FilIns', 'Alan Silvestri', '0000-00-00', 'Film', 'Instrumental', 578),
('The_Nights_', 'TheAvi014EleEng', 'Avicii', '0000-00-00', 'Electronic', 'English', 839),
('Therefore_I_Am', 'TheBil020PopEng', 'Billie Eilish', '0000-00-00', 'Pop', 'English', 411),
('The_Maze_Runner', 'TheJoh014FilIns', 'John Paesano', '0000-00-00', 'Film', 'Instrumental', 790),
('The_Imperial_March', 'TheJoh980FilIns', 'John Williams', '0000-00-00', 'Film pop', 'Instrumental', 329),
('The_Mandalorian', 'TheLud019MetIns', 'Ludwig Goransson', '0000-00-00', 'Metal', 'Instrumental', 713),
('The_Search', 'TheNF 019HipEng', 'NF ', '0000-00-00', 'Hip Hop', 'English', 562),
('The_Groovy_Cat', 'ThePAW018EleIns', 'PAWSA', '0000-00-00', 'Electronic', 'Instrumental', 744),
('Thunder', 'ThuIma017PunEng', 'Imagine Dragons', '0000-00-00', 'Punk', 'English', 433),
('Tokyo_Drift', 'TokTre006PopEng', 'Treiyaki Boyz', '0000-00-00', 'Pop', 'English', 155),
('Toofan', 'TooRav022FilTel', 'Ravi Basrur', '0000-00-00', 'Film pop', 'Telugu', 560),
('Too_Good_At_Goodbyes', 'TooSam017PopEng', 'Sam Smith', '0000-00-00', 'Pop', 'English', 927),
('Touch_It', 'TouKiD022IndEng', 'KiDi', '0000-00-00', 'Indie', 'English', 666),
('Toxic', 'ToxBoy022IndEng', 'BoyWithUke', '0000-00-00', 'Indie', 'English', 937),
('Tum_hi_ho', 'TumArj013FilHin', 'Arjit Singh', '0000-00-00', 'Film pop', 'Hindi', 801),
('Under_The_Influence', 'UndChr019R&BEng', 'Chris Brown', '0000-00-00', 'R&B/Soul', 'English', 349),
('Unholy', 'UnhSam023R&BEng', 'Sam Smith', '0000-00-00', 'R&B/Soul', 'English', 950),
('Unstoppable', 'UnsSia022IndEng', 'Sia', '0000-00-00', 'Indie', 'English', 95),
('Venom', 'VenEmi018HipEng', 'Eminem', '0000-00-00', 'Hip Hop', 'English', 73),
('Watermelon_Sugar', 'WatHar019PopEng', 'Harry Styles', '0000-00-00', 'Pop', 'English', 705),
('We_Don\'t_Talk_Anymore', 'We_Cha016PopEng', 'Charlie Puth', '0000-00-00', 'Pop', 'English', 888),
('WhatEver_It_Takes', 'WhaIma017RocEng', 'Imagine Dragons', '0000-00-00', 'Rock', 'English', 185),
('What_lovers_do', 'WhaMar017PopEng', 'Marron 5', '0000-00-00', 'Pop', 'English', 969),
('Why_this_Kolaveri_di', 'WhyAni011FilTam', 'Anirudh Ravichender', '0000-00-00', 'Film pop', 'Tamil', 37),
('Wiggle(ft.Snoop_Dogg)', 'WigJas014PopEng', 'Jason Derulo', '0000-00-00', 'Pop', 'English', 476),
('Wii_Shop', 'WiiIce008IndIns', 'Iceboy Ben', '0000-00-00', 'Indie', 'Instrumental', 121),
('Wild_Boy', 'WilMac012HipEng', 'Machine Gun Kelly', '0000-00-00', 'Hip Hop', 'English', 130),
('Without_You', 'WitAvi017EleEng', 'Avicii', '0000-00-00', 'Electronic', 'English', 786),
('World\'s_Smallest_Violin', 'WorRut017PopEng', 'Ruth B', '0000-00-00', 'Pop', 'English', 646),
('Wrap_Me_In_Plastic', 'WraCHR017PopEng', 'CHROMANCE', '0000-00-00', 'Pop', 'English', 844),
('Your_Power', 'YouBil018PopEng', 'Billie Eilish', '0000-00-00', 'Pop', 'English', 574),
('Your_New_Boyfriend', 'YouWil020IndEng', 'Wilbur Soot', '0000-00-00', 'Indie', 'English', 218);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `Username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `Username`, `password`, `Email`) VALUES
('', '', '', '', ''),
('Bharadwaj', 'Vadali', 'bsfgb', '1234', 'bharathvadali@gmail.com'),
('Daniel', 'Bavisetti', 'daniwellset', 'danbabai', 'ucse21016@stu.xim.edu.in'),
('dfrt', 'hrthrthrth', 'hrthrthrt', 'pppp', 'u@w.com'),
('Jharna', 'Gogoi', 'jg', 'hhhhhh', 'ucse21042@stu.xim.edu.in'),
('satvik', 'miriyala', 'pakodi', '0987', 'ucse21035@stu.xim.edu.in'),
('C.', 'Vishwanath', 'plasma', '1234', 'cvishwanath1417@gmail.com'),
('linkedintest', 'test', 'test', '1234', 'linkedintest@gmail.com'),
('Vaishnavi', 'Gupta', 'vg', '12345', 'ucse21057@stu.xim.edu.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD KEY `Username` (`Username`),
  ADD KEY `Song_id` (`Song_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`Song_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`),
  ADD CONSTRAINT `playlist_ibfk_2` FOREIGN KEY (`Song_id`) REFERENCES `songs` (`Song_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
