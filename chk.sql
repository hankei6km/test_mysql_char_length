CREATE DATABASE mydb;
USE mydb;
DROP TABLE chk;
CREATE TABLE chk (id INTEGER, ch TEXT) character set utf8mb4;
INSERT INTO chk VALUES(1, '❤️');
INSERT INTO chk VALUES(2, 'あ');
INSERT INTO chk VALUES(3, 'a');
SELECT *, CHAR_LENGTH(ch) FROM chk;