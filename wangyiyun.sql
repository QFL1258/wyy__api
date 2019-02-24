SET NAMES wangyiyun;
DROP DATABASE IF EXISTS wangyiyun;
CREATE DATABASE wangyiyun CHARSET=UTF8;
/*1:进入库学子*/
USE wangyiyun;
/*2.创建表 login*/
/*技巧1：库名；表名；列表；全英文小写字母*/
/*登录注册表*/
CREATE TABLE login(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  phone CHAR(11),
  pwd CHAR(8)
);
INSERT INTO login VALUES(NULL,'16602117410','12345677');
INSERT INTO login VALUES(NULL,'16602117411','12345678');
INSERT INTO login VALUES(NULL,'16602117412','12345679');
/*歌单推荐*/
CREATE TABLE recommend(
  nid     INT PRIMARY KEY AUTO_INCREMENT, 
  img_url VARCHAR(255),
  title   VARCHAR(255),
  play  VARCHAR(25),
  counts  DECIMAL(8,2)
);
INSERT INTO recommend VALUES
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/1.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/2.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/3.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/4.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/5.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/5.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.2),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/4.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.2),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/3.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.2),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/2.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.2),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/1.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.2),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/4.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.3),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/5.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.3),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/2.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.3),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/3.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.4),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/1.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.4),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/2.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.4),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/3.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.4),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/4.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.4),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/5.jpg","歌单介绍歌单介绍歌单介绍","播放量",156.2),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/1.jpg","歌单介绍歌单介绍歌单介绍","播放量",22222),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/2.jpg","歌单介绍歌单介绍歌单介绍","播放量",33333),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/3.jpg","歌单介绍歌单介绍歌单介绍","播放量",44444),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/4.jpg","歌单介绍歌单介绍歌单介绍","播放量",55555),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/5.jpg","歌单介绍歌单介绍歌单介绍","播放量",66666),
(null,"http://wyyapi.applinzi.com/img/歌单推荐图片/1.jpg","歌单介绍歌单介绍歌单介绍","播放量",77777);


/*推荐音乐*/
/*新歌首发*/
CREATE TABLE product(
  nid     INT PRIMARY KEY AUTO_INCREMENT, 
  img_url VARCHAR(255),
  title   VARCHAR(255),
  play  VARCHAR(25),
  counts  DECIMAL(8,2)
);
INSERT INTO product VALUES
(null,"http://wyyapi.applinzi.com/img/good/1.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/2.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/3.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/4.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/5.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/6.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/7.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/8.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/9.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/10.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/11.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/12.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/13.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/14.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/15.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/16.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/17.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/18.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/19.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/20.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/10.jpg","钢琴与爵士的完美邂逅","播放量",156.2),
(null,"http://wyyapi.applinzi.com/img/good/11.jpg","钢琴与爵士的完美邂逅","播放量",156.2),
(null,"http://wyyapi.applinzi.com/img/good/12.jpg","钢琴与爵士的完美邂逅","播放量",156.2),
(null,"http://wyyapi.applinzi.com/img/good/4.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/5.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/6.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/7.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/8.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/9.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/10.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/11.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/12.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/13.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/14.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/15.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/16.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/17.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/18.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/19.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/20.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/15.jpg","钢琴与爵士的完美邂逅","播放量",156.3),
(null,"http://wyyapi.applinzi.com/img/good/16.jpg","钢琴与爵士的完美邂逅","播放量",156.4),
(null,"http://wyyapi.applinzi.com/img/good/17.jpg","钢琴与爵士的完美邂逅","播放量",156.5),
(null,"http://wyyapi.applinzi.com/img/good/4.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/5.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/6.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/7.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/8.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/9.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/10.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/11.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/12.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/13.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/14.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/15.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/16.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/17.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/18.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/19.jpg","钢琴与爵士的完美邂逅","播放量",156.1),
(null,"http://wyyapi.applinzi.com/img/good/20.jpg","钢琴与爵士的完美邂逅","播放量",156.1);



