# Task-2-ECommerceDB-
 Data Insertion and Handling Nulls

This version matches your schema and shows:
________________________________________________________________________
INSERT (normal + handling NULL-like missing data)
UPDATE (single row, multiple rows, stock adjustment)
DELETE (single row + conditional delete)
SELECT at the end for checking results
________________________________________________________________________
SQL Developer Internship - Interview Questions and Answers

1. Difference between NULL and 0?
- NULL = absence of a value (unknown, not assigned).
- 0 = an actual numeric value.
Example: If a product’s Price is NULL, we don’t know its price. If Price = 0, it means the product is free.

2. What is a default constraint?
- A default constraint automatically assigns a value to a column if no value is provided during insertion.
Example:
City VARCHAR(50) DEFAULT 'Unknown'
If we don’t insert a city, it will be stored as "Unknown".

3. How does IS NULL work?
- IS NULL is used to check if a column’s value is NULL.
Example:
SELECT * FROM Customers WHERE Email IS NULL;

4. How do you update multiple rows?
 By using an UPDATE with a WHERE condition that matches multiple rows.
Example:
UPDATE Products
SET Price = Price * 1.10
WHERE Stock < 20;

5. Can we insert partial values?
- Yes, as long as the missing columns either allow NULL or have a DEFAULT value.
Example:
INSERT INTO Customers (First_Name, City) VALUES ('Sneha', 'Delhi');

6. What happens if a NOT NULL field is left empty?
- The query will fail with an error because NOT NULL fields require a value.

7. How do you rollback a deletion?
- If you’re using transactions (BEGIN, COMMIT, ROLLBACK):
BEGIN;
DELETE FROM Customers WHERE Customer_ID = 5;
ROLLBACK;   -- This undoes the deletion
- If already committed, rollback is not possible (unless you have backups).

8. Can we insert values into specific columns only?
Yes, you can specify only the columns you want.
Example:
INSERT INTO Products (Product_Name, Price) VALUES ('Tablet', 15000.00);
Other columns must either allow NULL or have defaults.

9. How to insert values using SELECT?
You can insert rows from another table/query using INSERT INTO ... SELECT.
Example:
INSERT INTO Orders (Customer_ID, Order_Date)
SELECT Customer_ID, CURDATE() FROM Customers WHERE City = 'Indore';

10. What is ON DELETE CASCADE?
It is a referential action in foreign keys.
- When a parent row is deleted, all related child rows are automatically deleted.
Example: If Orders.Customer_ID has ON DELETE CASCADE with Customers, deleting a customer will also delete all their orders.
