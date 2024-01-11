-- Create Database
CREATE DATABASE LibraryManagement;
USE LibraryManagement;

-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE NOT NULL,
    Email VARCHAR(100) UNIQUE CHECK (Email LIKE '%_@__%.__%')
);

-- Create Books Table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    PublishedYear INT CHECK (PublishedYear >= 1800),
    ISBN VARCHAR(20) UNIQUE CHECK (ISBN LIKE 'ISBN%')
);

-- Constraints for Students Table
ALTER TABLE Students
    ADD CONSTRAINT CHK_Students_DOB_NotNull CHECK (DOB IS NOT NULL);

-- Constraints for Books Table
ALTER TABLE Books
    ADD CONSTRAINT CHK_Books_Title_NotNull CHECK (Title IS NOT NULL),
    ADD CONSTRAINT CHK_Books_Author_NotNull CHECK (Author IS NOT NULL);

-- Loans Table
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    StudentID INT,
    BookID INT,
    LoanDate DATE,
    ReturnDate DATE NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Comments
-- The above script creates a database named LibraryManagement.
-- It creates tables Students, Books, and Loans with the specified columns.
-- Constraints are added to ensure data integrity.
-- Students table constraints: DOB cannot be NULL, Email follows a valid format.
-- Books table constraints: Title and Author cannot be NULL, PublishedYear is validated, ISBN follows a valid format.
-- Loans table is introduced to track book loans, with foreign key constraints to Students and Books tables.
