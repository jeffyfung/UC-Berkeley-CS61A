.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students
    WHERE color = 'blue' AND pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students
    WHERE color = 'blue' AND pet = 'dog';


CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students
    WHERE smallest > 2 ORDER BY smallest LIMIT 20;


CREATE TABLE matchmaker AS
  SELECT f.pet, f.song, f.color, s.color FROM students AS f, students AS s
    WHERE f.pet = s.pet AND f.song = s.song AND f.time < s.time;


CREATE TABLE sevens AS
  SELECT s.seven FROM students AS s, numbers AS n
    WHERE s.number = 7 AND n.'7' = 'True' AND s.time = n.time;