Use LibraryDB;

-- Create a view to show each member and how many books they have borrowed
CREATE VIEW MemberBorrowCount AS
SELECT m.member_id, m.name, COUNT(b.borrow_id) AS total_borrowed
FROM Member m
JOIN Borrow b ON m.member_id = b.member_id
GROUP BY m.member_id, m.name;
-- This view combines data from Member and Borrow tables and shows total books borrowed by each member


-- Use the above view to get members who borrowed more than 2 books
SELECT * FROM MemberBorrowCount
WHERE total_borrowed > 2;
-- This is a simple SELECT using the view — much easier than writing the full join again


-- Create a view to show book title, author name, and publication year
CREATE VIEW BookWithAuthor AS
SELECT b.title, a.name AS author_name, b.publication_year
FROM Book b
JOIN Book_Author ba ON b.book_id = ba.book_id
JOIN Author a ON ba.author_id = a.author_id;
-- This view joins Book, Book_Author, and Author tables to show full info in one query


-- Use the above view to find books published after 2010
SELECT * FROM BookWithAuthor
WHERE publication_year > 2010;
-- Again, reusing the view instead of writing the entire join again


-- Drop the views (optional cleanup)
DROP VIEW IF EXISTS MemberBorrowCount;
DROP VIEW IF EXISTS BookWithAuthor;
-- Use this if you want to remove the views later (for cleanup or testing)






