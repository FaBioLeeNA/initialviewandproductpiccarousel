DROP DATABASE IF EXISTS fecInitial;

CREATE DATABASE fecInitial;

USE fecInitial;

CREATE TABLE photos (
  id INT NOT NULL AUTO_INCREMENT,
  photoURL VARCHAR(255),
  colorID INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  colorID INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  reviewscore DECIMAL(10, 2) NOT NULL,
  questions INT NOT NULL,
  title VARCHAR(255),
  PRIMARY KEY (id)
);


