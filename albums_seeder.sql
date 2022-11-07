USE  codeup_test_db;
TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 50.2, 'Pop'),
       ('AC/DC', 'Back in Black', 1980, 30.1, 'Hard Rock'),
       ('Eagles', 'Their Greatest Hits', 1976, 41.2, 'Country Rock'),
       ('Eagles', 'Hotel California', 1976, 31.8, 'Soft Rock'),
       ('Shania Twain', 'Come On Over', 1997, 30.4, 'Country'),
       ('Pink Floyd', 'The Wall', 1979, 18.9, 'ProgressiveRock'),
       ('The Beatles', 'Sgt.Pepper\'sLnlyHeartsClbBand', 1967, 18.3, 'Rock'),
       ('Nirvana', 'Nevermind', 1991, 17.8, 'Alt Rock');

