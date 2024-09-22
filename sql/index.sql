-- part 1: creating the database 
CREATE TABLE Books (
  BookID INT NOT NULL,
  Title VARCHAR(255),
  Author VARCHAR(255),
  Genre VARCHAR(255),
  PublishedYear int,
  Price FLOAT,
  ISBN BIGINT,
  PRIMARY KEY (BookID)
);
-- part 1.2 insert data into table
INSERT INTO Books (BookID, Title, Author, Genre, PublishedYear, Price, ISBN) VALUES ('1', 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', '1960', '10.99', NULL);
INSERT INTO Books (BookID, Title, Author, Genre, PublishedYear, Price, ISBN) VALUES ('2', '1984', 'George Orwell', 'Dystopian', '1949', '8.99', '9780451524935');
INSERT INTO Books (BookID, Title, Author, Genre, PublishedYear, Price, ISBN) VALUES ('3', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', '1925', '12.50', '9780743273565');
INSERT INTO Books (BookID, Title, Author, Genre, PublishedYear, Price, ISBN) VALUES ('4', 'The Catcher in the Rye', 'J.D. Salinger', 'Classic', '1951', '7.99', NULL);
INSERT INTO Books (BookID, Title, Author, Genre, PublishedYear, Price, ISBN) VALUES ('5', 'Pride and Prejudice', 'Jane Austen', 'Romance', '1813', '9.99', '9780141439518');

-- problem 2.1: retrieve all records
SELECT * FROM Books;
-- problem 2.2: list distinct genres
SELECT DISTINCT Genre FROM Books;
-- problem 2.3: filter by price
SELECT * FROM Books WHERE price < 10;
-- problem 2.4: order by year
SELECT Title FROM Books ORDER BY PublishedYear ASC;
-- problem 2.5: filter with multiple conditions
SELECT * FROM Books 
WHERE Genre = 'Classic' OR 
Price BETWEEN 8 AND 12 AND
PublishedYear > 1950;
-- problem 2.6: find nulls ISBNs
SELECT * FROM Books WHERE ISBN IS NULL;
-- problem 2.7: use of IN clause
SELECT * FROM Books WHERE Author IN ('Harper Lee','George Orwell');
-- problem 2.8: apply an alias
SELECT Title, Price AS Cost FROM Books;

