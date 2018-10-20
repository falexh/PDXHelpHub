


/* Potentially add foreign keys to shelters so they can reference each other for help */ 

SET FOREIGN_KEY_CHECKS=0;
/*********** shelter 1 example schema **********/ 
/* contains socks and shirts */ 

DROP TABLE IF EXISTS shelter1;

CREATE TABLE shelter1 (
  id INT NOT NULL AUTO_INCREMENT,
  shelter_name VARCHAR(255) NOT NULL,
  sock_count INT NOT NULL,
  shirt_count INT NOT NULL,
  PRIMARY KEY (id),
  KEY id (id)
);

INSERT INTO shelter1(shelter_name,sock_count,shirt_count) VALUES ('Portland Rescue Mission', 36, 50);

/*********** shelter 2 example schema **********/ 
/* contains blankets and sandwiches */ 

DROP TABLE IF EXISTS shelter2;

CREATE TABLE shelter2 (
  id INT NOT NULL AUTO_INCREMENT,
  shelter_name VARCHAR(255) NOT NULL,
  blanket_count INT NOT NULL,
  sandwich_count INT NOT NULL,
  PRIMARY KEY (id),
  KEY id (id)
); 

INSERT INTO shelter2(shelter_name,blanket_count,sandwich_count) VALUES ('Columbia Shelter', 40, 60);

/*********** shelter 3 example schema **********/ 
/* contains sweaters,pants, and gloves */

DROP TABLE IF EXISTS shelter3;

CREATE TABLE shelter3 (
  id INT NOT NULL AUTO_INCREMENT,
  shelter_name VARCHAR(255) NOT NULL,
  sweater_count INT NOT NULL,
  pant_count INT NOT NULL,
  glove_count INT NOT NULL,
  PRIMARY KEY (id),
  KEY id (id)
); 

INSERT INTO shelter3(shelter_name,sweater_count,pant_count,glove_count) VALUES ('Hansen Shelter', 36, 50, 80);

SET FOREIGN_KEY_CHECKS=1; 
