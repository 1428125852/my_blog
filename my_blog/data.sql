SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `alembic_version` VALUES ('d0a35a10500d');

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` varchar(140) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_post_timestamp` (`timestamp`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `password_hash` varchar(128) DEFAULT NULL,
  `about_me` varchar(140) DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_user_email` (`email`),
  UNIQUE KEY `ix_user_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `user` VALUES ('4', 'duke', 'duke@126.com', 'pbkdf2:sha256:150000$hFjd5670$92f15777a905706a6608dc1af9ec6387eb3334cea394965714d6ecccca9f1c05', null, null);
INSERT INTO `user` VALUES ('3', 'kevin', 'kevin@126.com', 'pbkdf2:sha256:150000$hvUvl85r$c7dd5806459a7e77fffce1caa14482f25286e46176e142b047cb476c634816e4', '我是python工程师', null);
INSERT INTO `user` VALUES ('5', 'myblog', 'myblog@126.com', 'pbkdf2:sha256:150000$6w92ocR2$59550173d75d4ce99f7546f9ca1318f5c7b91324ac9ff7719655e3a6e1213c92', null, '2019-05-28 09:49:29');
