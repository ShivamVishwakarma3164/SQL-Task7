# SQL-Task7

Objective:
In this task, I learned how to create and use SQL views.
Views are like virtual tables that store a SELECT query. They help to simplify complex logic and make SQL queries reusable and easier to manage.

What I Did:
Created views using CREATE VIEW

Used views to simplify and reuse complex SELECT queries

Used views to filter results instead of repeating long joins

Understood how views help in abstraction and security

Learned how to drop views when they are no longer needed

Views Created:
MemberBorrowCount

Shows each member and how many books they have borrowed

Created by joining the Member and Borrow tables

Grouped by member ID and name

Used to easily filter members who borrowed more than 2 books

BookWithAuthor

Shows book title, author name, and publication year

Created by joining the Book, Book_Author, and Author tables

Makes it easy to search for books with author details without writing full joins

Queries Performed:
Selected all data from the views

Applied filters like WHERE total_borrowed > 2 and publication_year > 2010 using views

Used DROP VIEW IF EXISTS to remove the views after testing (optional)

Result:
After completing this task, I now understand how to create views to simplify queries and organize logic better.
Views also help protect the original table structure and make SQL more maintainable for bigger projects.

