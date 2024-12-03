-- SQL Commands recap

CREATE DATABASE MYTESTDB1;

SHOW DATABASES;
USE ALLdb;

USE gla13db;
SELECT DATABASE();
SHOW TABLES;
DESC tbl_downloads;
EXPLAIN tbl_members;
SELECT 
    *
FROM
    tbl_songs;
SELECT * FROM tbl_songs WHERE Genre = 'Techno';

-- DELETE VS DROP VS TRUNCATE
CREATE TABLE tbl_test(
SongID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(60) NOT NULL,
Artist VARCHAR(40) NOT NULL,
Genre VARCHAR(30) NOT NULL
);
SELECT * FROM tbl_test;
SELECT * FROM tbl_members;
SELECT * FROM tbl_songs;
SELECT * FROM tbl_downloads;
DESC tbl_test;

DELETE FROM tbl_test WHERE SongID = 3;
TRUNCATE TABLE tbl_test;
DROP TABLE tbl_test;
DROP DATABASE atestdb;

INSERT INTO tbl_downloads(SongID, MemberID, D_Date)
VALUES(70, 1, '2016-07-23');
TRUNCATE TABLE tbl_downloads;

-- ORDER BY, GROUP BY, HAVING AND Aggregate Functions
-- ORDER BY a column/field name in ascending order
SELECT * FROM tbl_songs ORDER BY Title ASC;
-- ORDER BY a column/field name in descending order
SELECT * FROM tbl_songs ORDER BY Title DESC;
SELECT * FROM tbl_songs ORDER BY SongID DESC;

-- GROUP BY artist field/column
SELECT Artist FROM tbl_songs GROUP BY Artist;

-- Count the number of genres by artist
SELECT Artist, COUNT(Genre) FROM tbl_songs GROUP BY Artist;

-- ALIAS is a temporary name given to a DB table or field
-- to enusre it is meaningful to the intended audience
SELECT Artist, COUNT(Genre) AS 'Genre Count'
FROM tbl_songs GROUP BY Artist;

SELECT Artist, COUNT(Genre) AS GenreCount
FROM tbl_songs GROUP BY Artist
ORDER BY GenreCount ASC;

-- Total number of songs by an Artist
SELECT Artist, COUNT(*) AS 'Total Songs' 
FROM tbl_songs
GROUP BY Artist;
SELECT * FROM tbl_songs;

-- 'AND' , 'OR', 'NOT' Operators
SELECT * FROM tbl_songs WHERE Artist = 'James Blunt'
AND Genre = 'Blues';


SELECT * FROM tbl_songs WHERE Artist = 'James Blunt'
OR Genre = 'Blues';

SELECT * FROM tbl_songs WHERE NOT Artist = 'James Blunt';