USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_first_name VARCHAR(50),
    artist_last_name  VARCHAR(100) NOT NULL,
    name VARCHAR (128)
    release_date DATE,
    sales DECIMAL(10,2),
    genre VARCHAR(150) NOT NULL,
    Primary Key(id)
  
);