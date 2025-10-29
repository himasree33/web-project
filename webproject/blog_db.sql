create database blog_db;
use blog_db;



CREATE TABLE admin (
  id INT(100) NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  password VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE comments (
  id INT(100) NOT NULL AUTO_INCREMENT,
  post_id INT(100) NOT NULL,
  admin_id INT(100) NOT NULL,
  user_id INT(100) NOT NULL,
  user_name VARCHAR(50) NOT NULL,
  comment VARCHAR(1000) NOT NULL,
  date DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

CREATE TABLE likes (
  id INT(100) NOT NULL AUTO_INCREMENT,
  user_id INT(100) NOT NULL,
  admin_id INT(100) NOT NULL,
  post_id INT(100) NOT NULL,
  PRIMARY KEY (id),
  KEY user_id (user_id)
);

CREATE TABLE posts (
  id INT(100) NOT NULL AUTO_INCREMENT,
  admin_id INT(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  title VARCHAR(100) NOT NULL,
  content VARCHAR(10000) NOT NULL,
  category VARCHAR(50) NOT NULL,
  image VARCHAR(100) NOT NULL,
  date DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(10) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT(100) NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);