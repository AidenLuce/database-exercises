USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT NOT NULL AUTO_INCREMENT,
    artist VARCHAR(30),
    name VARCHAR(30),
    release_date YEAR,
    sales FLOAT(30),
    genre VARCHAR(15),
    PRIMARY KEY (id)
);
