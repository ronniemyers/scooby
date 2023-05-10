drop database if exists scooby;
create database scooby;
use scooby;

CREATE TABLE content (
    content_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(125) NOT NULL,
    location VARCHAR(45) NULL,
    us_airdate DATE NOT NULL,
    television VARCHAR(45) NULL,
    film VARCHAR(45) NULL,
    rating INT NOT NULL
);

  CREATE TABLE monster (
    monster_id INT PRIMARY KEY AUTO_INCREMENT,
    content_id INT NOT NULL,
    monster VARCHAR(45) NOT NULL,
    species VARCHAR(45) NOT NULL,
    strength VARCHAR(200) NOT NULL,
    villain VARCHAR(200) NOT NULL,
    appearance VARCHAR(2048) NOT NULL,
    CONSTRAINT fk_content_id FOREIGN KEY (content_id)
        REFERENCES content (content_id)
);