-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 08:54 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) DEFAULT NULL,
  `msg` text DEFAULT '\'hey there\'',
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '12456789', 'first post', '2021-07-07 21:21:40', 'firstpost@gmail.com'),
(26, 'kabeer', '6260218130', NULL, NULL, 'kabeernayak@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets Learn about Recent Technology.', 'This is first post', 'first.post', 'Artificial intelligence (Ritik Sharma AI) is intelligence demonstrated by machines, as opposed to the natural intelligence displayed by humans or animals. Leading AI textbooks define the field as the study of \"intelligent agents\": any system that perceives its environment and takes actions that maximize its chance of achieving its goals.[a] Some popular accounts use the term \"artificial intelligence\" to describe machines that mimic \"cognitive\" functions that humans associate with the human mind, such as \"learning\" and \"problem solving\".[b]\r\n\r\nAI applications include advanced web search engines, recommendation systems (used by YouTube, Amazon and Netflix), understanding human speech (such as Siri or Alexa), self-driving cars (e.g. Tesla), and competing at the highest level in strategic game systems (such as chess and Go),[2] As machines become increasingly capable, tasks considered to require \"intelligence\" are often removed from the definition of AI, a phenomenon known as the AI effect.[3] For instance, optical character recognition is frequently excluded from things considered to be AI,[4] having become a routine technology.[5]', 'Ritikabout-b', '2021-07-17 10:22:30'),
(2, 'This is Second Post', 'Innovative technology', 'second.post', 'Augmented reality (AR) is an enhanced version of the real physical world that is achieved through the use of digital visual elements, sound, or other sensory stimuli delivered via technology. It is a growing trend among companies involved in mobile computing and business applications in particular.', '', '2021-07-13 15:26:15'),
(3, 'Java', 'must tagline', 'third.post', 'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let application developers write once, run anywhere (WORA),[16] meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.[17] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but has fewer low-level facilities than either of them. The Java runtime provides dynamic capabilities (such as reflection and runtime code modification) that are typically not available in traditional compiled languages. As of 2019, Java was one of the most popular programming languages in use according to GitHub,[18][19] particularly for client-server web applications, with a reported 9 million developers.[20]\r\n\r\nJava was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle) and released in 1995 as a core component of Sun Microsystems\' Java platform. The original and reference implementation Java compilers, virtual machines, and class libraries were originally released by Sun under proprietary licenses. As of May 2007, in compliance with the specifications of the Java Community Process, Sun had relicensed most of its Java technologies under the GPL-2.0-only license. Oracle offers its own HotSpot Java Virtual Machine, however the official reference implementation is the OpenJDK JVM which is free open source software and used by most developers and is the default JVM for almost all Linux distributions.\r\n\r\nAs of March 2021, the latest version is Java 16, with Java 11, a currently supported long-term support (LTS) version, released on September 25, 2018. Oracle released the last zero-cost public update for the legacy version Java 8 LTS in January 2019 for commercial use, although it will otherwise still support Java 8 with public updates for personal use indefinitely. Other vendors have begun to offer zero-cost builds of OpenJDK 8 and 11 that are still receiving security and other upgrades.', '', '2021-07-13 16:46:21'),
(4, 'Variable (mathematics)', 'fourth tagline ', 'fourth.post', 'In mathematics, a variable is a symbol which works as a placeholder for expression or quantities that may vary or change; is often used to represent the argument of a function or an arbitrary element of a set. In addition to numbers, variables are commonly used to represent vectors, matrices and functions.[1][2]\r\n\r\nMaking algebraic computations with variables as if they were explicit numbers allows one to solve a range of problems in a single computation. A typical example is the quadratic formula, which allows one to solve every quadratic equation—by simply substituting the numeric values of the coefficients of the given equation for the variables that represent them.\r\n\r\nIn mathematical logic, a variable is either a symbol representing an unspecified term of the theory (i.e., meta-variable), or a basic object of the theory—which is manipulated without referring to its possible intuitive interpretation.', '', '2021-07-13 16:46:21'),
(5, 'Goku', 'tagline 5', 'slug.next', 'Son Goku[nb 1] is a fictional character and main protagonist of the Dragon Ball manga series created by Akira Toriyama. He is based on Sun Wukong (known as Son Goku in Japan and Monkey King in the West), a main character in the classic Chinese novel Journey to the West (16th century), combined with influences from the Hong Kong martial arts films of Jackie Chan and Bruce Lee. Goku first made his debut in the first Dragon Ball chapter, Bulma and Son Goku,[nb 2][nb 3] originally published in Japan\'s Weekly Shōnen Jump magazine on December 3, 1984.[2] Born Kakarot,[nb 4][nb 5] Goku is introduced as an eccentric, monkey-tailed boy who practices martial arts and possesses superhuman strength. He meets Bulma and joins her on a journey to find the magical seven Dragon Balls that can grant the user one wish. Along the way, he finds new friends who follow him on his journey to become a stronger fighter. As Goku grows up, he becomes the Earth\'s mightiest warrior and battles a wide variety of villains with the help of his friends and family, while also gaining new allies in the process.\r\n\r\nAs the protagonist of Dragon Ball, Goku appears in most of the episodes, films, television specials and OVAs of the manga\'s anime adaptations (Dragon Ball, Dragon Ball Z) and sequels (Dragon Ball GT, Dragon Ball Super), as well as many of the franchise\'s video games. Due to the series\' international popularity, Goku has become one of the most recognizable and iconic characters in the world. Outside the Dragon Ball franchise, Goku has made cameo appearances in Toriyama\'s self-parody series Neko Majin Z, has been the subject of other parodies, and has appeared in special events. Most Western audiences were introduced to the adult version of Goku appearing in the Dragon Ball Z anime, itself an adaptation of Dragon Ball manga volumes 17–42, as opposed to his initial child form, due to the limited success of the first series overseas.[3] Goku\'s critical reception has been largely positive and he is often considered to be one of the greatest manga and anime characters of all time.', '', '2021-07-13 16:51:07'),
(6, 'Title 5', 'tagline 5.1', 'slug.next3', 'Son Goku[nb 1] is a fictional character and main protagonist of the Dragon Ball manga series created by Akira Toriyama. He is based on Sun Wukong (known as Son Goku in Japan and Monkey King in the West), a main character in the classic Chinese novel Journey to the West (16th century), combined with influences from the Hong Kong martial arts films of Jackie Chan and Bruce Lee. Goku first made his debut in the first Dragon Ball chapter, Bulma and Son Goku,[nb 2][nb 3] originally published in Japan\'s Weekly Shōnen Jump magazine on December 3, 1984.[2] Born Kakarot,[nb 4][nb 5] Goku is introduced as an eccentric, monkey-tailed boy who practices martial arts and possesses superhuman strength. He meets Bulma and joins her on a journey to find the magical seven Dragon Balls that can grant the user one wish. Along the way, he finds new friends who follow him on his journey to become a stronger fighter. As Goku grows up, he becomes the Earth\'s mightiest warrior and battles a wide variety of villains with the help of his friends and family, while also gaining new allies in the process.\r\n\r\nAs the protagonist of Dragon Ball, Goku appears in most of the episodes, films, television specials and OVAs of the manga\'s anime adaptations (Dragon Ball, Dragon Ball Z) and sequels (Dragon Ball GT, Dragon Ball Super), as well as many of the franchise\'s video games. Due to the series\' international popularity, Goku has become one of the most recognizable and iconic characters in the world. Outside the Dragon Ball franchise, Goku has made cameo appearances in Toriyama\'s self-parody series Neko Majin Z, has been the subject of other parodies, and has appeared in special events. Most Western audiences were introduced to the adult version of Goku appearing in the Dragon Ball Z anime, itself an adaptation of Dragon Ball manga volumes 17–42, as opposed to his initial child form, due to the limited success of the first series overseas.[3] Goku\'s critical reception has been largely positive and he is often considered to be one of the greatest manga and anime characters of all time.', '', '2021-07-13 16:51:07'),
(7, 'Ritik', 'this is new post tagline', 'ritik.post', 'Ritik is a good boy', 'img.png', '2021-07-17 09:46:19'),
(8, 'Bitcoin', 'A cryptocurrency', 'bit.post', 'Doge Coin', 'bitcoin.png', '2021-07-17 10:02:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
