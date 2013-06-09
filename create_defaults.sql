SET CHARACTER SET utf8;

CREATE DATABASE IF NOT EXISTS `jimny` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE `jimny`;

CREATE TABLE IF NOT EXISTS `word` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`content` text COLLATE utf8_unicode_ci NOT NULL,
	`word_class_id` tinyint(4) NOT NULL,
	`ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `markov_chain` {
	`prev_word_id` int(11) NOT NULL,
	`next_word_id` int(11) NOT NULL,
	`occurrence_count` int(11) NOT NULL default '0'
} ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
