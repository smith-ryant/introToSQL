--1. Create a table called person that records a person's name, age, height(in cm), city, and favorite_color;
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  age INTEGER,
  height_cm FLOAT(2),
  city VARCHAR(20),
  favorite_color VARCHAR(10)
);
--2. Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name, age, height_cm, city, favorite_color)
VALUES ('Superman', 33, 29.53, 'Metropolis', 'Blue'),
  ('Batman', 51, 29.13, 'Gotham', 'Black'),
  ('Aquaman', 37, 29.92, 'Poseidonis', 'Orange'),
  (
    'Green_Lantern',
    84,
    28.74,
    'Coast City',
    'Green'
  ),
  ('Wonder_Woman', 79, 29.35, 'Themyscira', 'Red');
--3. Select all the people in the person table by height from tallest to shortest.
SELECT *
FROM person
ORDER BY height_cm DESC;
--4. Select all the peole in the person table by height from shortest to tallest.
SELECT *
FROM person
ORDER BY height_cm ASC;
--5a. Select all the peopple in the person table by age from oldest to youngest.
SELECT *
FROM person
ORDER BY age DESC;
--5b. Select all the peopple in the person table by age from oldest to youngest
SELECT *
FROM person
ORDER BY age ASC;
--6. Select all the people in the persons table older than age 20.
SELECT *
FROM PERSON
WHERE age > 20
ORDER BY age ASC;
--7. Select all the people in the person table that are exactly 18.
SELECT *
FROM person
WHERE age = 18;
--8. Select all the people in the person table that are less than 20 and older than 40.
SELECT *
FROM person
WHERE age > 20
  and age < 40;
--9. Select all the peole in the person table that are not 27.
SELECT *
FROM person
WHERE age != 27;
--10. Select all the people in the person table where theier favorite color is not red.
SELECT *
FROM person
WHERE favorite_color != 'Red';
--11. Select all the people in the person table where their favorite color is not red and is not blue.
Select *
FROM person
WHERE favorite_color != 'Red'
  and favorite_color != 'Blue';
--12. Select all the people in the person table where their favorite_color is orange or green.
SELECT *
FROM person
WHERE favorite_color = 'Green'
  or favorite_color = 'Orange';
--13. Select all the people in the person table where their favorite color is orange, green or blue(use IN).
SELECT *
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');
--14. Select all the peo;le in the person table where their favorite clolor is red or black.
SELECT *
FROM person
WHERE favorite_color IN ('Red', 'Black');