# Library-Management-Database
# Library Management Database Project

## Introduction

The Library Management Database is designed to manage information related to students, books, and book loans in a library setting. This README provides an overview of the project structure, database schema, constraints, and additional comments.

## Project Structure

The project is structured into three main components:

1. **Database Creation:** Defines the database schema and constraints.
2. **Comments:** Provides explanatory comments for each section of the script.
3. **Documentation:** Offers comprehensive information on the purpose and structure of the database.

## Database Schema

### Students Table

- **StudentID:** Integer, Primary Key
- **FirstName:** Varchar, Maximum 50 characters
- **LastName:** Varchar, Maximum 50 characters
- **DOB:** Date, Not Null
- **Email:** Varchar, Maximum 100 characters, Unique

### Books Table

- **BookID:** Integer, Primary Key
- **Title:** Varchar, Maximum 100 characters, Not Null
- **Author:** Varchar, Maximum 50 characters, Not Null
- **PublishedYear:** Integer, Check (PublishedYear >= 1800)
- **ISBN:** Varchar, Maximum 20 characters, Unique, Check (ISBN LIKE 'ISBN%')

### Loans Table

- **LoanID:** Integer, Primary Key
- **StudentID:** Integer, Foreign Key referencing Students
- **BookID:** Integer, Foreign Key referencing Books
- **LoanDate:** Date
- **ReturnDate:** Date, Nullable

## Constraints

### Students Table

- DOB cannot be NULL.
- Email follows a valid email format.

### Books Table

- Title and Author cannot be NULL.
- PublishedYear is validated (>= 1800).
- ISBN follows a valid format.

### Loans Table

- Foreign key constraints established between Loans, Students, and Books tables.

## Comments

- Provides detailed explanations for each section of the script.
- Helps developers understand the purpose and functionality of each part.

## Usage

To use this project, run the SQL script in your preferred database management system, ensuring that the syntax is compatible. Adjustments may be necessary based on your specific database system.

