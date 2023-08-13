DROP TABLE IF EXISTS books;
CREATE TABLE books
(
    title TEXT,
    author TEXT,
    yearOfPublication INTEGER,
    bookLanguage TEXT,
    numberInside INTEGER,
    numberOutside INTEGER,
    nrOfPages INTEGER,
    isbn TEXT(13),
    PRIMARY KEY (isbn)
);

.mode csv
.import books.csv books
.headers on
.mode columns
.timer on

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
        isbn = '1234567890438';

UPDATE books
    SET
        numberInside = 23,
        numberOutside = 0
    WHERE
        title = 'Python 3 - Object-oriented Programming';

DELETE FROM books WHERE isbn = '1234567896211';

DELETE FROM books WHERE title = 'Databasteknik';