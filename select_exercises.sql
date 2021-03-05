USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE table albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) NOT NULL,
                        name VARCHAR(100) DEFAULT 'Untitled',
                        release_date INT(4),
                        sales DECIMAL(5,2),
                        genre VARCHAR(20) DEFAULT 'Unknown',
                        PRIMARY KEY (id)
);

INSERT INTO albums (artist, name, release_date, sales)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.3),
       ('AC/DC', 'Back in Black', 1980, 29.4),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.4),
       ('Whitney Houston', 'The Bodyguard', 1992, 28.4),
       ('Eagles', 'Their Greatest Hits (1971-1975)', 1976, 41.2),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6),
       ('Fleetwood Mac', 'Rumours', 1977, 27.9),
       ('Shania Twain', 'Come On Over', 1997, 29.6),
       ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 14.4),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0),
       ('Michael Jackson', 'Bad', 1987, 22.2),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.4);

SELECT name AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT name AS 'Albums released in the 1990s' FROM albums WHERE release_date BETWEEN 1989 AND 2000;

SELECT name AS 'Albums that had less than 20 million sales' FROM albums WHERE sales < 20;