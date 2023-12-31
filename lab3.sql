-- Create database called «Student»
CREATE DATABASE Student;

-- Create Majors table
CREATE TABLE Majors (
    major_ID SERIAL PRIMARY KEY,
    major_name VARCHAR(255)
);

-- Create Student table with foreign key reference to Majors
CREATE TABLE Student (
    student_ID SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    date_of_birth DATE,
    GPA DECIMAL,
    major_ID SERIAL,
    FOREIGN KEY (major_ID) REFERENCES Majors(major_ID),
    city VARCHAR(255)
);

-- Insert values into Majors table
INSERT INTO Majors (major_ID, major_name)
VALUES
    (1, 'Computer Science'),
    (2, 'Mechanical Engineering'),
    (3, 'Finance'),
    (4, 'Electrical Engineering'),
    (5, 'Biology');

-- Insert values into Student table
INSERT INTO Student (student_ID, first_name, last_name, date_of_birth, GPA, major_ID, city)
VALUES
(1, 'Amina', 'Abdulova', '14/05/2003', 3.8, 1, 'Almaty'),
(2, 'Aidar', 'Kazakhov', '23/08/2004', 3.5, 2, 'Astana'),
(3, 'Gulnara', 'Ismailova', '30/11/2005', 3.9, 3, 'Almaty'),
(4, 'Bakhytzhan', 'Nurpeisov', '17/02/2002', 3.2, 4, 'Shymkent'),
(5, 'Ainur', 'Suleimenova', '09/07/2003', 3.6, 5, 'Almaty'),
(6, 'Askhat', 'Yerzhanov', '12/04/2004', 3.7, 1, 'Atyrau'),
(7, 'Aizere', 'Tulegenova', '28/09/2005', 3.4, 3, 'Almaty'),
(8, 'Aruzhan', 'Zhumagaliyeva', '03/12/2003', 3.8, 2, 'Almaty'),
(9, 'Azamat', 'Iskakov', '25/03/2006', 3.5, 4, 'Taldykorgan'),
(10, 'Dana', 'Baibekova', '19/06/2004', 3.9, 3, 'Almaty'),
(11, 'Eldar', 'Bekturov', '07/01/2002', 3.3, 1, 'Almaty'),
(12, 'Emina', 'Kasimova', '14/10/2003', 3.7, 2, 'Astana'),
(13, 'Galymzhan', 'Saparbayev', '02/05/2005', 3.6, 5, 'Almaty'),
(14, 'Gaukhar', 'Nurkhanova', '07/08/2004', 3.4, 1, 'Almaty'),
(15, 'Ilyas', 'Rakhimov', '16/07/2006', 3.8, 3, 'Almaty'),
(16, 'Karlygash', 'Tursynbekova', '09/09/2002', 3.9, 2, 'Shymkent'),
(17, 'Mukhtar', 'Zhumabayev', '22/11/2003', 3.5, 4, 'Almaty'),
(18, 'Nurgul', 'Kenzhebekova', '05/04/2004', 3.7, 1, 'Almaty'),
(19, 'Nurzhan', 'Talgatov', '28/02/2005', 3.6, 5, 'Astana'),
(20, 'Ruslan', 'Karimov', '11/03/2002', 3.4, 3, 'Almaty'),
(21, 'Sanzhar', 'Bakytov', '07/06/2003', 3.8, 2, 'Almaty'),
(22, 'Saule', 'Oralova', '01/10/2005', 3.9, 1, 'Almaty'),
(23, 'Talgat', 'Sarsembayev', '10/12/2004', 3.5, 4, 'Shymkent'),
(24, 'Zarina', 'Kazakhbayeva', '29/01/2003', 3.7, 1, 'Almaty'),
(25, 'Zhibek', 'Tulendiyeva', '31/07/2006', 3.8, 3, 'Almaty'),
(26, 'Azamat', 'Iskakov', '05/09/2002', 3.9, 2, 'Atyrau'),
(27, 'Zhuldyz', 'Nurlanova', '18/08/2005', 3.5, 4, 'Almaty'),
(28, 'Ayaz', 'Mukhametov', '24/02/2004', 3.6, 5, 'Almaty'),
(29, 'Zarina', 'Zhakupova', '06/11/2003', 3.7, 1, 'Almaty'),
(30, 'Arman', 'Sagymbayev', '14/04/2002', 3.8, 3, 'Almaty'),
(31, 'Amina', 'Kanatova', '30/06/2004', 3.9, 2, 'Astana'),
(32, 'Dinara', 'Ospanova', '03/03/2006', 3.5, 4, 'Almaty'),
(33, 'Erlan', 'Tasmagambetov', '27/10/2002', 3.6, 5, 'Almaty'),
(34, 'Zere', 'Yergaliyeva', '20/05/2005', 3.7, 1, 'Almaty'),
(35, 'Ruslan', 'Mukhtarov', '22/07/2004', 3.8, 3, 'Almaty'),
(36, 'Nazerke', 'Nurmukhamedova', '08/09/2003', 3.9, 2, 'Almaty'),
(37, 'Baurzhan', 'Aidarkhanov', '12/12/2002', 3.5, 4, 'Astana'),
(38, 'Aigerim', 'Nurlanova', '16/01/2004', 3.6, 5, 'Almaty'),
(39, 'Nursultan', 'Kulmanov', '13/08/2005', 3.7, 1, 'Almaty'),
(40, 'Aisha', 'Tulegenova', '09/04/2006', 3.8, 3, 'Almaty');

-- Retrieve students with GPA between 3.0 and 3.5 (inclusive)
SELECT * FROM Student WHERE GPA BETWEEN 3.0 AND 3.5;

-- Retrieve students with birthdate in 2004 in alphabetical order
SELECT *
FROM Student
WHERE date_of_birth >= '2004-01-01' AND date_of_birth <= '2004-12-31'
ORDER BY last_name, first_name;

-- Retrieve students with birthdate before 2003 and from Shymkent
SELECT * FROM Student WHERE date_of_birth < '2003-01-01' AND city = 'Shymkent';

-- List students with even-numbered student_IDs
SELECT * FROM Student WHERE student_ID % 2 = 0;

-- Find students whose last names start with the letter "A"
SELECT * FROM Student WHERE last_name LIKE 'A%';

-- Find students with the maximal GPA
SELECT * FROM Student WHERE GPA = (SELECT MAX(GPA) FROM Student);

-- Find students with the minimal GPA
SELECT * FROM Student WHERE GPA = (SELECT MIN(GPA) FROM Student);

-- Find students born in January
SELECT *
FROM Student
WHERE DATE_PART('month', date_of_birth) = 1;

-- Determine the highest GPA for each major (GROUP BY)
SELECT major_ID, MAX(GPA) AS max_gpa
FROM Student
GROUP BY major_ID;

-- Count the number of students born in each year (GROUP BY)
SELECT
    SUBSTRING(CAST(date_of_birth AS VARCHAR), 1, 4) AS birth_year,
    COUNT(*) AS count
FROM Student
GROUP BY birth_year
ORDER BY birth_year;

-- Calculate the number of students from Almaty born in each month
SELECT
    CASE
        WHEN DATE_PART('month', date_of_birth) = 1 THEN 'January'
        WHEN DATE_PART('month', date_of_birth) = 2 THEN 'February'
        WHEN DATE_PART('month', date_of_birth) = 3 THEN 'March'
        WHEN DATE_PART('month', date_of_birth) = 4 THEN 'April'
        WHEN DATE_PART('month', date_of_birth) = 5 THEN 'May'
        WHEN DATE_PART('month', date_of_birth) = 6 THEN 'June'
        WHEN DATE_PART('month', date_of_birth) = 7 THEN 'July'
        WHEN DATE_PART('month', date_of_birth) = 8 THEN 'August'
        WHEN DATE_PART('month', date_of_birth) = 9 THEN 'September'
        WHEN DATE_PART('month', date_of_birth) = 10 THEN 'October'
        WHEN DATE_PART('month', date_of_birth) = 11 THEN 'November'
        WHEN DATE_PART('month', date_of_birth) = 12 THEN 'December'
    END AS birth_month,
    COUNT(*) AS count
FROM Student
WHERE city = 'Almaty'
GROUP BY birth_month;






