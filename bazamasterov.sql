# Host: localhost  (Version: 5.1.40-community)
# Date: 2013-08-18 10:03:05
# Generator: MySQL-Front 5.3  (Build 2.53)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES cp1251 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

#
# Source for table "city"
#

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `work` varchar(255) DEFAULT NULL,
  `first` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=cp1251;

#
# Data for table "city"
#

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'������-��-����','+7 918 544-44-46','��-�� � 9:00 �� 18:00',b'1'),(2,'����','+7 918 544-44-467','��-�� � 9:00 �� 18:00',b'0'),(4,'�����','+7 918 544-44-46','��-�� � 9:00 �� 18:00',NULL),(5,'�����-���������',NULL,NULL,NULL),(7,'������',NULL,NULL,NULL),(8,'�������',NULL,NULL,NULL);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;

#
# Source for table "galery"
#

DROP TABLE IF EXISTS `galery`;
CREATE TABLE `galery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` text,
  `image1` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `pabl` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=cp1251 ROW_FORMAT=DYNAMIC;

#
# Data for table "galery"
#

/*!40000 ALTER TABLE `galery` DISABLE KEYS */;
/*!40000 ALTER TABLE `galery` ENABLE KEYS */;

#
# Source for table "lenta"
#

DROP TABLE IF EXISTS `lenta`;
CREATE TABLE `lenta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `preview` text,
  `about` text,
  `watch` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `pabl` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `alt1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=cp1251;

#
# Data for table "lenta"
#

/*!40000 ALTER TABLE `lenta` DISABLE KEYS */;
INSERT INTO `lenta` VALUES (1,'���','������ ','',0,1375874280,0,2,NULL,''),(2,'����� ���� ��������','�����','<p>&nbsp;������</p>',6,1375955760,1,2,NULL,''),(3,'������������','','',0,1375955760,1,2,NULL,'');
/*!40000 ALTER TABLE `lenta` ENABLE KEYS */;

#
# Source for table "likes"
#

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id_user` int(11) DEFAULT NULL,
  `id_like` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL COMMENT '1=zakaz,2=maste,3=lenta'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Data for table "likes"
#

/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (79,43,1),(79,80,2),(79,79,2),(84,41,1),(84,42,1),(84,43,1),(81,80,2),(81,79,2),(83,79,2),(83,80,2),(83,35,1);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;

#
# Source for table "messages"
#

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_from` int(11) DEFAULT NULL,
  `user_to` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `about` varchar(500) DEFAULT NULL,
  `pabl` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=cp1251;

#
# Data for table "messages"
#

/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (29,79,80,1376044723,0,'������ ���',NULL),(30,79,81,1376656392,0,'fgfg',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

#
# Source for table "pay"
#

DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `summ` int(11) DEFAULT NULL,
  `err_mesage` varchar(255) DEFAULT NULL,
  `err_code` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Data for table "pay"
#

/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;

#
# Source for table "reg"
#

DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `fio` varchar(255) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=cp1251;

#
# Data for table "reg"
#

/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
INSERT INTO `reg` VALUES (17,'c@m.ru','1','a3mmoz55e8n4ayt8pfsp','��',1375874080),(26,'prometey2013vp@yandex.com','1','56sfk54hpm636hbl1rk3','99',1376653090);
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;

#
# Source for table "rek"
#

DROP TABLE IF EXISTS `rek`;
CREATE TABLE `rek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pabl` int(11) DEFAULT '0',
  `zakaz` tinyint(3) DEFAULT '0',
  `master` tinyint(3) DEFAULT '0',
  `lenta` tinyint(3) DEFAULT '0',
  `text1` varchar(255) DEFAULT '',
  `text2` varchar(255) DEFAULT NULL,
  `text3` varchar(255) DEFAULT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `name3` varchar(255) DEFAULT NULL,
  `tel1` varchar(255) DEFAULT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `tel3` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link1` varchar(255) DEFAULT NULL,
  `link2` varchar(255) DEFAULT NULL,
  `link3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=cp1251;

#
# Data for table "rek"
#

/*!40000 ALTER TABLE `rek` DISABLE KEYS */;
/*!40000 ALTER TABLE `rek` ENABLE KEYS */;

#
# Source for table "reklama_city"
#

DROP TABLE IF EXISTS `reklama_city`;
CREATE TABLE `reklama_city` (
  `id_reklama` int(11) NOT NULL,
  `id_city` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;

#
# Data for table "reklama_city"
#

/*!40000 ALTER TABLE `reklama_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `reklama_city` ENABLE KEYS */;

#
# Source for table "reklama_types"
#

DROP TABLE IF EXISTS `reklama_types`;
CREATE TABLE `reklama_types` (
  `id_rek` int(11) NOT NULL DEFAULT '0',
  `id_type` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Data for table "reklama_types"
#

/*!40000 ALTER TABLE `reklama_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `reklama_types` ENABLE KEYS */;

#
# Source for table "review"
#

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_what` int(11) DEFAULT NULL,
  `about` text,
  `date` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '1=zakaz 2=master 3=lenta',
  `pabl` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=cp1251;

#
# Data for table "review"
#

/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (68,79,80,'����������',1375962774,'2',0),(69,79,80,'������ ������',1375962782,'2',1),(70,79,80,'����',1375962785,'2',1),(71,79,2,'�����',1375962828,'3',1),(72,79,43,'',1376504347,'1',1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

#
# Source for table "setup"
#

DROP TABLE IF EXISTS `setup`;
CREATE TABLE `setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `var` varchar(40) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=cp1251;

#
# Data for table "setup"
#

/*!40000 ALTER TABLE `setup` DISABLE KEYS */;
INSERT INTO `setup` VALUES (1,'SMTP_settings','mail=false;\r\nauth=false;\r\nHost=localhost;\r\nPort=25;\r\nUsername=;\r\nPassword='),(19,'FCKeditor','1'),(152,'news_pbcount','10'),(153,'news_pscount','5'),(154,'news_fcount','3'),(155,'news_acount','30'),(156,'catalog_fcount','30'),(157,'search_fcount','100'),(158,'search_num','100'),(159,'dollar_kurs','32.5072'),(160,'euro_kurs','45.4873'),(161,'auth_fcount','10'),(162,'auth_acount','50'),(163,'mail_manage','From=tvcd@yandex.ru;\r\nFromName=���� ;\r\nrecipient=tvcd@yandex.ru;\r\nSubject=����'),(164,'mail_consult','From=tvcd@yandex.ru;\r\nFromName=���� ;\r\nrecipient=;\r\nSubject=����'),(165,'city_acount','20'),(166,'street_acount','20'),(167,'house_acount','20'),(168,'company_acount','20'),(169,'law_fcount','2'),(170,'law_acount','10 '),(171,'tsjnews_fcount','2'),(172,'mail_order','From=a@m.ru;\r\nFromName=;\r\nrecipient=a@m.ru;\r\nSubject='),(173,'mail_questions','From=a@m.ru;\r\nFromName=;\r\nrecipient=a@m.ru;\r\nSubject='),(174,'mail_feed','From=a@m.ru;\r\nFromName=;\r\nrecipient=a@m.ru;\r\nSubject='),(175,'tsjnews_acount','10'),(176,'galery_acount','10'),(177,'mail_register','From=tvcd@yandex.ru;\r\nFromName=;\r\nrecipient=tvcd@yandex.ru;\r\nSubject=�����������'),(178,'zakupki_fcount','2'),(179,'act_category_acount','50'),(180,'reklama_fcount','10'),(181,'vendor_acount','10'),(182,'zakupki_acount','10'),(183,'offer_acount','10'),(184,'reklama_acount','10'),(185,'rek_acount','10'),(186,'zakaz_fcount','10'),(187,'master_fcount','4'),(188,'master_acount','2'),(189,'lenta_fcount','10'),(190,'lenta_acount','10'),(191,'galery_fcount','10'),(192,'users_acount','10'),(193,'user_acount','10'),(194,'zakaz_acount','15'),(195,'review_acount','10'),(196,'mail_send','From=an@m.ru;\r\nFromName=;\r\nrecipient=an@m.ru;\r\nSubject='),(197,'mail_rassilka','From=an111@m.ru;\r\nFromName=;\r\nrecipient=;\r\nSubject=');
/*!40000 ALTER TABLE `setup` ENABLE KEYS */;

#
# Source for table "site_moduls"
#

DROP TABLE IF EXISTS `site_moduls`;
CREATE TABLE `site_moduls` (
  `Id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=cp1251;

#
# Data for table "site_moduls"
#

/*!40000 ALTER TABLE `site_moduls` DISABLE KEYS */;
INSERT INTO `site_moduls` VALUES (16,'�����-������','/search/panel.php',NULL),(19,'�����','/search/front.php',NULL),(22,'�����������-�������','/auth/messages.php',NULL),(23,'������ � ��������','/auth/pupup.php',NULL),(36,'�������� ���������','/user/add_photo.php',NULL),(37,'���������','/user/settings.php',NULL),(38,'�������','/master/master_profile.php',NULL),(39,'����','/menu/menu_sub.php',NULL),(40,'��� �����','/zakaz/edit_zakaz.php',NULL),(41,'������','/zakaz/front.php',NULL),(42,'��� ������','/city/panel.php',NULL),(43,'����������������','/law/front.php',NULL),(44,'�����������','/auth/panel.php',NULL),(45,'���� �����','/zakaz/one.php',NULL),(46,'�����','/lenta/front.php',NULL),(47,'����� ����','/lenta/one.php',NULL),(48,'�������','/master/front.php',NULL),(49,'������','/zakaz/my.php',NULL),(50,'�������������','/consult/front.php',NULL),(52,'������������','/gallery/front.php',NULL),(54,'��� ����','/menu/menu_buttom.php',NULL),(55,'������ ����','/reklama/front.php',NULL),(56,'��� �����','/feedb/front.php',NULL),(57,'���. ��� �����������','/user/front.php',NULL),(59,'������� �����','/zakaz/add.php',NULL),(60,'���� �������','/menu/menu_user.php',NULL),(61,'�������� �����','/master/add_message.php',NULL),(62,'���������','/master/messages.php',NULL),(63,'��������� �����','/master/user_messages.php',NULL),(64,'������� ������','/zakaz/good.php',NULL),(65,'�������','/gallery/front.php',NULL),(66,'������� �������','/master/good.php',NULL),(67,'��� ������','/lenta/good.php',NULL),(68,'������','/user/avatar.php',NULL),(69,'���� �������','/user/del_profile.php',NULL),(70,'������','/pay/front.php',NULL);
/*!40000 ALTER TABLE `site_moduls` ENABLE KEYS */;

#
# Source for table "site_pages"
#

DROP TABLE IF EXISTS `site_pages`;
CREATE TABLE `site_pages` (
  `id` tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` longtext,
  `sort` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=cp1251;

#
# Data for table "site_pages"
#

/*!40000 ALTER TABLE `site_pages` DISABLE KEYS */;
INSERT INTO `site_pages` VALUES (6,'license_master','<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt justo sed tellus consequat feugiat. Quisque ut dapibus metus. Quisque augue ipsum, tincidunt vitae fringilla sit amet, tristique non odio. Duis egestas pretium molestie. Aenean elementum fringilla erat quis rutrum. Ut rutrum sodales diam, vel pretium nulla egestas et. In non velit quis urna elementum suscipit. Mauris neque arcu, lacinia sed molestie non, molestie ac purus. Suspendisse in nibh vitae enim adipiscing eleifend. Vivamus eleifend orci a turpis consectetur varius. Donec adipiscing, augue ut iaculis varius, orci est porttitor quam, eu feugiat tellus lorem non lacus. Aenean ante sem, placerat eu ornare vel, iaculis non elit. Nullam sagittis vestibulum pulvinar. In sagittis adipiscing sollicitudin. Phasellus et dui sit amet dolor sodales eleifend ut nec leo. Curabitur porta porttitor sollicitudin.</p>\r\n\r\n<p style=\"text-align:justify\">Vivamus lobortis, nisi sed auctor faucibus, turpis ante ornare metus, a egestas massa felis eu lacus. Sed tincidunt accumsan tortor, non fermentum metus eleifend vitae. Sed id massa a risus venenatis cursus eu nec est. Donec porttitor est in est hendrerit convallis. Praesent vitae quam nisl. Pellentesque bibendum varius justo sed posuere. Maecenas mi ante, vestibulum id lacinia auctor, iaculis a purus. Vivamus eget eros turpis.</p>\r\n\r\n<p style=\"text-align:justify\">Nam vehicula adipiscing massa ac scelerisque. Fusce blandit dui sit amet risus tincidunt sed condimentum metus lobortis. Aliquam erat volutpat. Vivamus diam eros, cursus nec aliquam accumsan, lacinia vitae urna. Duis vel arcu id nibh pharetra convallis. Nullam fermentum egestas eros quis suscipit. Nunc quis fringilla sem. Phasellus ultrices turpis a dui rutrum consectetur. In bibendum lectus at neque laoreet semper. Nullam hendrerit, libero non posuere egestas, urna lectus aliquam ante, placerat laoreet ligula enim eu mauris. Phasellus rutrum convallis tellus, eu faucibus erat commodo quis. Aliquam erat volutpat. Quisque sit amet tortor vitae odio gravida bibendum quis et enim.</p>\r\n\r\n<p style=\"text-align:justify\">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed magna odio, pretium et semper vel, semper in lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed ornare nulla augue. Cras leo nunc, sodales id luctus in, iaculis et purus. Donec sit amet sagittis quam. Donec quis massa et erat scelerisque molestie sed sit amet justo. Fusce in massa sed lectus egestas venenatis. Proin vitae sagittis dolor.</p>\r\n\r\n<p style=\"text-align:justify\">Nunc convallis tincidunt tellus non accumsan. In enim justo, mattis eget pellentesque nec, pellentesque sagittis arcu. Proin dictum tellus eget nisl fermentum eget faucibus sapien aliquet. Nunc cursus iaculis lacinia. Curabitur arcu orci, bibendum vel scelerisque vel, molestie id odio. Sed sagittis facilisis lacus, vitae fermentum justo dapibus sit amet. Praesent lacus purus, porta non tempor ut, suscipit ut nisi. Praesent fermentum risus ut erat commodo luctus sed ut enim.</p>\r\n',NULL),(10,'index','',1),(17,'error404','<div class=\"err_message\">�� ������� �� ���������� ��� �� ������������ ������</div>',1),(62,'gallery','',1),(63,'news','lkjlkjjk',1),(73,'company','<p><font size=\\\"4\\\"><u>������ � 21</u> </font></p>\r\n<p><font size=\\\"4\\\">A����: �. ������-��-����, ��.40��� ������, 308/3 </font></p>\r\n<p><font size=\\\"4\\\">����� ������: 9.00-19.00 ��������: ��.,��. ���.���� - �������. ������� ������ </font></p>\r\n<p><font size=\\\"4\\\">�������: 257-33-11,257-33-31. </font></p>\r\n<p><font size=\\\"4\\\">E-mail: </font><a href=\\\"mailto:f21@donlib.ru\\\"><font size=\\\"4\\\">f21@donlib.ru</font></a><font size=\\\"4\\\"> </font></p>\r\n<p><font size=\\\"4\\\">&nbsp;</font></p>\r\n<p><font size=\\\"4\\\">���.: &ldquo;40-����� ������&rdquo; (������ &ldquo;��������&rdquo;) ��� ��������� - 1969. </font></p>\r\n<p><font size=\\\"4\\\">������������ ���������� - ������������ �������� � �����. </font></p>\r\n<p><font size=\\\"4\\\">���������� ������������� - 6 900. </font></p>\r\n<p><font size=\\\"4\\\">������������ ������ ����� - �������������. </font></p>\r\n<p><font size=\\\"4\\\">����� � ������������ �����������: </font></p>\r\n<p><font size=\\\"4\\\">&bull;&ldquo;��������&rdquo; - ������� ����. </font></p>\r\n<p><font size=\\\"4\\\">&bull;&quot;��������&quot; - ������� ����.</font></p>',NULL),(90,'home_panel',NULL,NULL),(91,'p_1240463485','',NULL),(93,'search','',NULL),(94,'p_1339734922','<div><center><h2> <font color=\\\"008080\\\"> ������ � 21\r\n<div> <font color=\\\"000000\\\"> A����: �. ������-��-����, ��.40��� ������, 308/3 <br>\r\n����� ������: 9.00-19.00 <br> \r\n��������: ��.,��. <br>\r\n���.���� - �������. ������� ������ <br> \r\n�������: 257-33-11,257-33-31. <br>\r\nE-mail: f21@donlib.ru <br>\r\n���.: �40-����� ������� (������ ����������) <br>\r\n\r\n��� ��������� - 1969. <br>\r\n������������ ���������� - ������������ �������� � �����. <br> \r\n���������� ������������� - 6 900. <br>\r\n������������ ������ ����� - �������������. <br> \r\n\r\n����� � ������������ �����������: <br>\r\n����������� - ������� ����. <br>\r\n�\\\"��������\\\" - ������� ����. <div> </font> </h2></center></div><br>',NULL),(95,'p_1339754666','<table border=\\\"1\\\" cols=\\\"2\\\">\r\n    <tbody>\r\n        <tr>\r\n            <th>\r\n            <p align=\\\"center\\\">�.�.�.</p>\r\n            </th>\r\n            <div align=\\\"center\\\">\r\n            <th>���������</th>\r\n            </div>\r\n            <th>\r\n            <p align=\\\"center\\\">�����</p>\r\n            </th>\r\n        </tr>\r\n        <tr align=\\\"center\\\">\r\n            <td height=\\\"70\\\">\r\n            <p align=\\\"center\\\">�������� ��������� �����������</p>\r\n            </td>\r\n            <td>\r\n            <p align=\\\"center\\\">����������</p>\r\n            </td>\r\n            <td>\r\n            <p align=\\\"center\\\">���������</p>\r\n            </td>\r\n        </tr>\r\n        <tr align=\\\"center\\\">\r\n            <td>\r\n            <p align=\\\"center\\\">������ ������� ������, ��� 2</p>\r\n            </td>\r\n            <td>\r\n            <p align=\\\"center\\\">������ ������� 2, ��� 2</p>\r\n            </td>\r\n            <td>\r\n            <p align=\\\"center\\\">������ ������� 2, ��� 2</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>',NULL),(96,'p_1339754799','<a name=\\\"jjj\\\"></a><blockquote style=\\\"MARGIN-RIGHT: 0px\\\" dir=\\\"ltr\\\">\r\n<div align=\\\"left\\\"><font color=\\\"#008080\\\"><font size=\\\"4\\\">� ��� ��.��������� ������� � ������� ��������� ������������: <br />\r\n</font><font color=\\\"#000000\\\"><font size=\\\"4\\\">-��������� ����; <br />\r\n-7 ������������ �����������; <br />\r\n-��� Panasonic - 7 ��.; <br />\r\n-������� HP - 5 ��.</font> <br />\r\n</font></font></div>\r\n</blockquote>\r\n<h2 align=\\\"left\\\"><blockquote>\r\n<p><font color=\\\"#008080\\\"><font size=\\\"3\\\">������������ ��������� ��: <br />\r\n</font><font color=\\\"#000000\\\" size=\\\"3\\\">����� �������� ����������� ��������� �� ����������� �������� Opac Global, ������������� ������������ &quot;���-�&quot;. <br />\r\n� ��������� ����� ��������� &laquo;���-�&raquo; ����������� 3 ������ ����. OPAC-Global &ndash; ������������������� ������������������ �����������-�������������� �������, <br />\r\n������������� � ����������� ����������� web-�������� � web-��������. <br />\r\n������������� ��� ������������� ������������� ������ ���� ���������, <br />\r\n���������� ���������� ������ �������. ������������� ������� ����� ���� ����������� ��� �� ���� ����������������� �������,<br />\r\n��� � �� ���� �������������� �������� � ������ ���������� ������ ������� http. <br />\r\n� ����� �������, ��� ������� ������������ ��������� � ����� ������������ web-��������. ����� ��������� � ���� ����� ���� 100 � �����. &bull; OPAC-Global ����� � ������ ���������������� �������� �������� ��������� ������ ������ ������ (www.nilc.ru). &bull; OPAC-midi &ndash; ������������� ����������� ���� OPAC-Global, �� ����������� ��� ������������� ������� ��������� ��� ��������� ������������ �����. &bull; OPAC-mini &ndash; ����, ��������������� ��� ������������� ������� � ������ ��������� � ������ ����������� �������, <br />\r\n���������� ��������������� � ������ ������������� ����������������� � ������������ ������� �� ������� ��������� ���������� ������. </font></font></p>\r\n</blockquote></h2>\r\n<blockquote style=\\\"MARGIN-RIGHT: 0px\\\" dir=\\\"ltr\\\">\r\n<div align=\\\"left\\\"><font color=\\\"#008080\\\"><font size=\\\"4\\\">����������� ������������ ��������� � ��������� ������ ������� <br />\r\n</font><font color=\\\"#000000\\\"><font size=\\\"4\\\">����������� ����������� ��������� � ����������� ������-������. <br />\r\n������� ���������� ������ ������� ����� ��������� � ��������� �������� HTTP. <br />\r\n������� ���������� ������ ������ (����) - ADABAS. <br />\r\n���������� ����� �������� � ����������� web-��������� �� IBM PC ���������� �����������. <br />\r\n��������� ����� �������� �� ���������������� � ����������������� �����������, �������������� ����������� web-������� � ������� ��� ������. <br />\r\nIBM PC ����������� ����������, OS MS Windows NT/2000 <br />\r\nSUN, OS Solaris <br />\r\nIBM RS 6000, OS AIX <br />\r\nHP, OS HP-UX</font> <br />\r\nS 390, OS/390 <br />\r\n</font></font></div>\r\n</blockquote>',NULL),(97,'consult','',NULL),(98,'about','',NULL),(99,'manage','',NULL),(100,'service','',NULL),(101,'reports','',NULL),(103,'tsg_news','',NULL),(104,'opros','',NULL),(105,'photo','',NULL),(106,'zakupki','',NULL),(107,'auth',NULL,NULL),(108,'project','',NULL),(109,'commerce','<p>preg_filter returns<br />\r\nArray<br />\r\n(<br />\r\n[0] => A:C:1<br />\r\n[1] => B:C:a<br />\r\n[2] => A:2<br />\r\n[3] => B:b<br />\r\n[4] => A:3<br />\r\n[7] => A:4<br />\r\n)<br />\r\npreg_replace returns<br />\r\nArray<br />\r\n(<br />\r\n[0] => A:C:1<br />\r\n[1] => B:C:a<br />\r\n[2] => A:2<br />\r\n[3] => B:b<br />\r\n[4] => A:3<br />\r\n[5] => A<br />\r\n[6] => B<br />\r\n[7] => A:4<br />\r\n)</p>\r\n',NULL),(110,'userguide','',NULL),(111,'feedb','<p>����� �� ������ ������ ������� ������������ �����</p>\r\n',NULL),(112,'help','',NULL),(113,NULL,NULL,NULL),(114,'vendor_auth','',NULL),(115,'zakupki_1369735398','',NULL),(120,'tarif',NULL,NULL),(121,'master','',NULL),(122,'lenta','',NULL),(123,'photo','',NULL),(124,'p_1372930573','',NULL),(125,'messages','',NULL),(126,'zakaz_my','',NULL),(127,'zakaz_good','',NULL),(128,'master_good','',NULL),(129,'lenta_good','',NULL),(130,'p_1372930687','',NULL),(131,'zakaz','',NULL),(132,'master_profile','',NULL),(133,'zakaz_add','',NULL),(134,'edit_zakaz','',NULL),(135,'zakaz_one','',NULL),(136,'lenta_one','',NULL),(137,'add_message','',NULL),(138,'user_message','',NULL),(139,'uslugi','',NULL),(140,'master_text','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,',NULL),(141,'del_profile','',NULL),(142,'pay','<p>&nbsp;kkkkkkkkkkk</p>',NULL);
/*!40000 ALTER TABLE `site_pages` ENABLE KEYS */;

#
# Source for table "site_shablons"
#

DROP TABLE IF EXISTS `site_shablons`;
CREATE TABLE `site_shablons` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text,
  `preview_image` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;

#
# Data for table "site_shablons"
#

/*!40000 ALTER TABLE `site_shablons` DISABLE KEYS */;
INSERT INTO `site_shablons` VALUES (1,'index','index.html',NULL,NULL),(2,'inner','inner.html',NULL,NULL),(3,'auth','auth.html',NULL,NULL);
/*!40000 ALTER TABLE `site_shablons` ENABLE KEYS */;

#
# Source for table "site_tree"
#

DROP TABLE IF EXISTS `site_tree`;
CREATE TABLE `site_tree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned DEFAULT NULL,
  `parent` int(10) unsigned DEFAULT NULL,
  `section` enum('0','1') DEFAULT '0',
  `fix` enum('0','1') DEFAULT '0',
  `pabl` enum('0','1') DEFAULT '1',
  `page` varchar(255) DEFAULT NULL,
  `menu` enum('0','1') DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `shablon` tinyint(6) DEFAULT NULL,
  `main_section` varchar(255) DEFAULT NULL,
  `section1` varchar(255) DEFAULT NULL,
  `section2` varchar(255) DEFAULT NULL,
  `section3` varchar(255) DEFAULT NULL,
  `section4` varchar(255) DEFAULT NULL,
  `section5` varchar(255) DEFAULT NULL,
  `section6` varchar(255) DEFAULT NULL,
  `FieldName` tinyint(3) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=cp1251;

#
# Data for table "site_tree"
#

/*!40000 ALTER TABLE `site_tree` DISABLE KEYS */;
INSERT INTO `site_tree` VALUES (1,0,0,'1','1','1','���������','1','���������',1,NULL,'modul=42;','modul=44;','modul=60;','modul=54;','','',NULL,'','',''),(2,0,1,'1','1','1','p_1208089819','0','�������',1,NULL,'modul=42;','modul=44;',NULL,'modul=54;','','',NULL,NULL,'',''),(3,0,2,'0','0','1','index','1','�������',1,NULL,'modul=42;','modul=44;',NULL,'modul=54;','','',NULL,'','',''),(16,59,1,'1','1','1','error404','0','Error404',2,'page=17;','modul=42;','modul=44;',NULL,'modul=54;','','',NULL,'','',''),(17,1,16,'0','1','1','error404','1','Error404',2,'page=17;','modul=42;','modul=44;',NULL,'modul=54;','','',NULL,'Error404','',''),(130,65,1,'1','1','1','auth','0','�����������',2,'modul=22;','modul=42;','modul=44;',NULL,'modul=54;','','',NULL,'�����������','',''),(131,56,130,'0','1','1','auth','0','�����������',2,'modul=22;','modul=42;','modul=44;',NULL,'modul=54;','','',NULL,'�����������','',''),(133,66,1,'1','0','1',NULL,'0','������������',1,NULL,'modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'������������','',''),(134,67,133,'0','0','1','consult','1','������������',1,'page=9;modul=50;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'������������','',''),(143,77,135,'0','0','1','galery','1','����������',1,'page=105;modul=52;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'����������','',''),(145,78,1,'1','0','1',NULL,NULL,'������ ����',1,NULL,'modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'������ ����','',''),(146,79,145,'0','0','1','project','1','� �������',2,'page=108;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'� �������','',''),(147,80,145,'0','0','1','commerce','1','������� �� �����',2,'page=109;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'������� �� �����','',''),(148,83,145,'0','0','1','userguide','1','���������������� ����������',2,'page=110;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'���������������� ����������','',''),(149,82,145,'1','0','1','feedb','1','�������� �����',2,'modul=56;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'�������� �����','',''),(150,108,145,'0','0','1','help','1','������',2,'page=112;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'������','',''),(151,0,149,'0','0','1','feedb','1','�������� �����',2,'page=111;modul=56;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'�������� �����','',''),(153,84,1,'1','0','1',NULL,'1','�������',1,NULL,'modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'�������','',''),(154,85,153,'0','0','1','master','1','�������',1,'modul=48;','modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'�������','',''),(155,86,1,'1','0','1',NULL,'1','�����',1,NULL,'modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'�����','',''),(156,87,155,'0','0','1','lenta','1','�����',1,'modul=46;','modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'�����','',''),(157,88,1,'1','0','1',NULL,'1','�������',1,NULL,'modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'�������','',''),(158,89,157,'0','0','1','photo','1','�������',1,'modul=65;','modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'�������','',''),(159,90,162,'0','1','1','add_photo','1','�������� ���������',1,'modul=36;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,NULL,NULL,NULL),(160,100,161,'0','1','1','settings','1','���������',1,'modul=37;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,NULL,NULL,NULL),(161,92,1,'1','0','1',NULL,'0','������ �������',1,NULL,'modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'������ �������','',''),(162,93,161,'0','0','1','lk','1','��� �������',1,'modul=57;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'��� �������','',''),(163,94,161,'0','0','1','messages','1','���������',1,'modul=62;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'���������','',''),(164,95,161,'0','0','1','zakaz_my','1','��� ������',1,'modul=49;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'��� ������','',''),(165,96,161,'0','0','1','zakaz_good','1','������� ������',1,'modul=64;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'������� ������','',''),(166,97,161,'0','0','1','master_good','1','������� �������',1,'modul=66;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'������� �������','',''),(167,98,161,'0','0','1','lenta_good','1','������� ������',1,'modul=67;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'������� ������','',''),(168,1,1,'1','0','1',NULL,'1','������',1,NULL,NULL,NULL,NULL,'modul=54;',NULL,NULL,NULL,NULL,NULL,NULL),(169,10,168,'0','0','1','zakaz','1','������',1,'modul=41;','modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'������','',''),(170,101,153,'0','1','1','master_profile','0','�������',1,'modul=38;','modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'�������','',''),(171,102,164,'0','1','1','zakaz_add','0','�������� �����',1,'modul=59;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'�������� �����','',''),(172,103,161,'0','1','1','edit_zakaz','0','�������������� ������',1,'modul=40;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'�������������� ������','',''),(173,104,168,'0','1','1','zakaz_one','0','���� �����',1,'modul=45;','modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'���� �����','',''),(174,105,155,'0','0','1','lenta_one','1','�����',1,'modul=47;','modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'����� ���� ��������','',''),(175,106,153,'0','0','1','add_message','0','�������� ���������',1,'modul=61;','modul=42;','modul=44;','modul=39;','modul=54;',NULL,NULL,NULL,'�������� ���������','',''),(176,107,161,'0','0','1','user_message','0','��������� �������',1,'modul=61;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'��������� �������','',''),(177,93,162,'0','1','1','avatar','1','������',1,'modul=68;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,NULL,NULL,NULL),(178,81,145,'0','0','1','uslugi','1','������� ������',2,'page=139;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'������� ������','',''),(179,109,161,'0','0','0','master_text',NULL,'����� ��� �������� ������� �������',1,'page=140;','modul=42;','modul=44;',NULL,'modul=54;',NULL,NULL,NULL,'����� ��� �������� ������� �������','',''),(180,110,161,'0','0','1','del_profile','1','�������� �������',1,'modul=69;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'�������� �������','',''),(181,111,161,'0','0','1','pay',NULL,'�������',1,'page=142;modul=70;','modul=42;','modul=44;','modul=60;','modul=54;',NULL,NULL,NULL,'�������','','');
/*!40000 ALTER TABLE `site_tree` ENABLE KEYS */;

#
# Source for table "time"
#

DROP TABLE IF EXISTS `time`;
CREATE TABLE `time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=cp1251;

#
# Data for table "time"
#

/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (1,'� ���'),(2,'� �����'),(3,'�� ��� ������'),(4,'� �����');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;

#
# Source for table "types"
#

DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `pabl` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=cp1251;

#
# Data for table "types"
#

/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (2,'���� / ����',2,31,0),(3,'������� �������',2,32,0),(5,'����������',2,36,0),(6,'��������',2,44,0),(7,'������',2,40,0),(8,'������ / �����',2,42,0),(9,'��� / ��������',2,33,0),(10,'������',2,45,0),(12,'����� / �������',3,29,0),(13,'������',3,23,0),(14,'������ / �����',3,24,0),(16,'�������',3,26,0),(21,'���� / ����',5,12,0),(22,'�������� / �������',5,13,0),(23,'�� / ��������',5,16,0),(24,'������ / �����',5,15,0),(25,'����� / ������',5,17,0),(26,'����� / ���',5,19,0),(27,'������',5,21,0),(28,'��������� / �����',5,14,0),(32,'�������� / �������',4,5,0),(34,'�����������',4,7,0),(35,'������������',4,3,0),(36,'������� / ������',4,9,0),(37,'���������',4,6,0),(38,'����',4,10,0),(39,'��������',4,4,0),(40,'������� / ������',4,8,0),(41,'������ / �����',3,0,0),(42,'���������',3,1,0);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;

#
# Source for table "types_sections"
#

DROP TABLE IF EXISTS `types_sections`;
CREATE TABLE `types_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;

#
# Data for table "types_sections"
#

/*!40000 ALTER TABLE `types_sections` DISABLE KEYS */;
INSERT INTO `types_sections` VALUES (1,'�������',0,NULL),(2,'������',1,1),(3,'������������',1,2),(4,'������',1,3),(5,'��������',1,4);
/*!40000 ALTER TABLE `types_sections` ENABLE KEYS */;

#
# Source for table "user_types"
#

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE `user_types` (
  `id_user` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Data for table "user_types"
#

/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (84,2),(79,39),(79,35),(79,2),(80,9),(81,32),(81,39),(81,35),(84,35);
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;

#
# Source for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `is_master` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pass` varchar(255) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '1',
  `tel` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  `pass_text` varchar(30) NOT NULL,
  `fio` varchar(255) DEFAULT NULL COMMENT '��� ������������� ����������',
  `link` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `about` text,
  `watch` int(11) DEFAULT '0',
  `id_city` int(11) DEFAULT NULL,
  `skipe` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `experience` varchar(500) DEFAULT NULL,
  `grafic` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `is_free` bit(1) DEFAULT b'0',
  `new_comments` bit(1) DEFAULT NULL,
  `new_messages` bit(1) DEFAULT NULL,
  `date_visit` int(11) DEFAULT NULL,
  `pay_active` tinyint(3) DEFAULT '0',
  `pre_master` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=cp1251;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (79,'a@m.ru',1,'c4ca4238a0b923820dcc509a6f75849b',8,'','',1375873985,'1','������ ���� ��������1','',NULL,'gg',0,7,'','','','',4,b'1',b'1',b'1',1376654079,0,0),(80,'anutabur@mail.ru',1,'c4ca4238a0b923820dcc509a6f75849b',7,'',NULL,1375874128,'1','�����','',NULL,'',9,1,'','','','',0,b'1',b'1',b'1',1375874128,0,0),(81,'b@m.ru',1,'c4ca4238a0b923820dcc509a6f75849b',6,'','',1376459481,'1','1','',NULL,'��� ���',5,1,'','','','',4,b'1',b'1',b'1',1376553580,0,0),(82,'n@m.ru',0,'c4ca4238a0b923820dcc509a6f75849b',5,NULL,NULL,1376471179,'1','jjjjjjjjj',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,b'0',b'1',b'1',1376471179,0,0),(83,'mm@as.ru',0,'c4ca4238a0b923820dcc509a6f75849b',4,NULL,NULL,1376471223,'1','1',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,b'0',b'1',b'1',1376504427,0,0),(84,'nm@ff.ru',0,'8277e0910d750195b448797616e091ad',3,'','',1376474215,'d','dfg','',NULL,'fgfgh',0,1,'','','','',4,b'1',b'1',b'1',1376474215,0,1),(85,'jj@m.ru',0,'6512bd43d9caa6e02c990b0a82652dca',2,NULL,NULL,1376650289,'11','111',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,b'0',b'1',b'1',1376650289,0,0),(86,'jj@m.ru',0,'c4ca4238a0b923820dcc509a6f75849b',1,NULL,NULL,1376650305,'1','fgfg',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,b'0',b'1',b'1',1376650305,0,0),(87,'prometey2013vp@yandex.com',0,'c4ca4238a0b923820dcc509a6f75849b',0,NULL,NULL,1376653132,'1','1',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,b'0',b'1',b'1',1376653132,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

#
# Source for table "zakaz"
#

DROP TABLE IF EXISTS `zakaz`;
CREATE TABLE `zakaz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `date_before` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `about` text,
  `id_user` int(11) DEFAULT NULL,
  `watch` int(11) DEFAULT '0',
  `pabl` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=cp1251;

#
# Data for table "zakaz"
#

/*!40000 ALTER TABLE `zakaz` DISABLE KEYS */;
INSERT INTO `zakaz` VALUES (49,'ggg',2,66666,4,1376596800,1376559124,'',79,0,0);
/*!40000 ALTER TABLE `zakaz` ENABLE KEYS */;

#
# Source for table "zakaz_types"
#

DROP TABLE IF EXISTS `zakaz_types`;
CREATE TABLE `zakaz_types` (
  `id_zakaz` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Data for table "zakaz_types"
#

/*!40000 ALTER TABLE `zakaz_types` DISABLE KEYS */;
INSERT INTO `zakaz_types` VALUES (17,5),(16,2),(19,0),(29,2),(23,2),(22,2),(28,2),(21,3),(20,0),(18,2),(27,2),(26,2),(25,2),(24,2),(31,2),(30,2),(32,2),(33,2),(34,9),(35,3),(36,3),(37,2),(38,2),(39,2),(40,2),(41,2),(42,2),(43,2),(49,2);
/*!40000 ALTER TABLE `zakaz_types` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
