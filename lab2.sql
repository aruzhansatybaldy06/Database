-- Task 1: Create a database called "lab2"
CREATE DATABASE labTwo;

-- Task 2: Create a table called "Books"
CREATE TABLE Books (
    book_id serial PRIMARY KEY,
    title varchar(255),
    author varchar(255) DEFAULT 'Unknown Author',
    publication_year integer DEFAULT NULL,
    genre varchar(255)
);

-- Task 3: Insert a row with data into the "Books" table
INSERT INTO Books (title, author, publication_year, genre)
VALUES ('The Lord Of The Rings', 'John Tolkien', 1954, 'Fantasy');

-- Task 4: Insert one row into the "Books" table against the column book_id and title
INSERT INTO Books (book_id, title)
VALUES (2, 'Another Sample Book');

-- Task 5: Insert a book with a NULL value in the publication_year column
INSERT INTO Books (title, publication_year)
VALUES ('Aruzhans Book', NULL);

-- Task 6: Insert 3 books into the "Books" table using a single INSERT statement
INSERT INTO Books (title, author, publication_year, genre)
VALUES ('Romeo and Juliet', 'William Shakespeare', 1595, 'Tragedy'),
       ('The Big Sleep', 'Raymond Chandler', 1939, 'Detective'),
       ('Harry Potter', 'Joanne Rowling', 1997, 'Fantasy');

-- Task 7: Set the default value 'Unknown Author' for the "author" column
-- and insert a book without specifying an author
INSERT INTO Books (title, publication_year, genre)
VALUES ('Book Without Author', 2022, 'Fantasy');

-- Task 8: Insert only default values against each column of the Books table
INSERT INTO Books DEFAULT VALUES;

-- Task 9: Create a duplicate of the Books table named books_new with the same
-- structure using the LIKE keyword
CREATE TABLE books_new (LIKE Books);

-- Task 10: Insert all rows from Books table to Books_new table
INSERT INTO books_new SELECT * FROM Books;

-- Task 11: Change publication_year in Books table to 2000 if it equals NULL
UPDATE Books SET publication_year = 2000 WHERE publication_year IS NULL;

-- Task 12: Increase publication year of each book by 2 and return title and updated
-- publication_year with the alias "New Publication_year"
SELECT title, publication_year + 2 AS "New Publication_year" FROM Books;

-- Task 13: Update the genre of book with ID = 2 to 'Fantasy'
UPDATE Books SET genre = 'Fantasy' WHERE book_id = 2;

-- Task 14: Remove all rows from Books table where genre is "Detective"
DELETE FROM Books WHERE genre = 'Detective';

-- Task 15: Remove all rows from Books_new table if book_id exists in Books table and
-- return all deleted data
DELETE FROM books_new WHERE book_id IN (SELECT book_id FROM Books);

-- 16. Remove all rows from Books table.
DELETE FROM Books;







