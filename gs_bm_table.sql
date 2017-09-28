-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017 年 9 月 28 日 11:44
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db21`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `書籍名` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `書籍URL` text COLLATE utf8_unicode_ci NOT NULL,
  `書籍コメント` text COLLATE utf8_unicode_ci NOT NULL,
  `登録日時` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `書籍名`, `書籍URL`, `書籍コメント`, `登録日時`) VALUES
(1, 'MBAバリュエーション', 'https://www.amazon.co.jp/MBA%E3%83%90%E3%83%AA%E3%83%A5%E3%82%A8%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3-%E6%97%A5%E7%B5%8CBP%E5%AE%9F%E6%88%A6MBA2-%E6%A3%AE%E7%94%9F-%E6%98%8E/dp/4822242463/ref=sr_1_1/357-4977212-9883951?ie=UTF8&qid=1506233553&sr=8-1&keywords=mba%E3%83%90%E3%83%AA%E3%83%A5%E3%82%A8%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3', '黒川推薦図書', '2017-09-24 15:17:57'),
(2, 'やれたかも委員会', 'https://www.amazon.co.jp/%E3%82%84%E3%82%8C%E3%81%9F%E3%81%8B%E3%82%82%E5%A7%94%E5%93%A1%E4%BC%9A-1%E5%B7%BB-%E5%90%89%E7%94%B0-%E8%B2%B4%E5%8F%B8/dp/4575312738', '鈴木さん推薦図書。青山ブックセンターで立ち読み可。', '2017-09-28 18:39:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
