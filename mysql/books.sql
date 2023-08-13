DROP DATABASE IF EXISTS library;
CREATE DATABASE IF NOT EXISTS library;

USE library;

DROP TABLE IF EXISTS books;

CREATE TABLE books
(
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    yearOfPublication INT,
    bookLanguage VARCHAR(15),
    numberInside INT,
    numberOutside INT,
    nrOfPages INT,
    isbn VARCHAR(13) PRIMARY KEY NOT NULL
);

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'books.csv'
INTO TABLE books
CHARSET utf8
FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"'
LINES
    TERMINATED BY '\n';

SET profiling = 1;

SELECT * FROM books;

INSERT INTO books
VALUES
    ('Programming PHP', 'Kevin Tatroe and Peter Macintyre', 2002, 'English', 15, 7, 450, '8691436253378'),
    ('Programming PHP', 'Kevin Tatroe and Peter Macintyre', 2002, 'English', 15, 7, 450, '8691436253374'),
    ('Programming PHP', 'Kevin Tatroe and Peter Macintyre', 2002, 'English', 15, 7, 450, '8691436253371'),
    ('Mastering JavaScript Object-Oriented Programming', 'Andrea Chiarelli', 2016, 'English', 2, 23, 292, '8691436253353')
;

UPDATE books
    SET
        numberInside = 15,
        numberOutside = 15
    WHERE
        isbn = '1234567890438'
;

UPDATE books
    SET
        numberInside = 23,
        numberOutside = 0
    WHERE
        title = 'Python 3 - Object-oriented Programming'
;

DELETE FROM books WHERE isbn = '1234567896211';

DELETE FROM books WHERE title = 'Databasteknik';

SHOW PROFILES;
SHOW PROFILE CPU;
SHOW PROFILE CPU FOR QUERY 1;
SHOW PROFILE CPU FOR QUERY 2;
SHOW PROFILE CPU FOR QUERY 3;
SHOW PROFILE CPU FOR QUERY 4;
SHOW PROFILE CPU FOR QUERY 5;
SHOW PROFILE CPU FOR QUERY 6;