--You work at a book store. It's the end of the month, and you need to find out the 5 bestselling books at your store. Use a select statement to list names, authors, and number of copies sold of the 5 books which were sold most.

--books table schema

  --  name
  -- author
  -- copies_sold
  
  SELECT name, author, copies_sold from books ORDER BY copies_sold DESC LIMIT 5


--For this challenge you need to create a SELECT statement that will contain data about departments that had a sale with a price over 98.00 dollars. This SELECT statement will have to use an EXISTS to achieve the task.
/*
departments table schema

    id
    name

sales table schema

    id
    department_id (department foreign key)
    name
    price
    card_name
    card_number
    transaction_date

resultant table schema

    id
    name

*/

SELECT departments.id, departments.name FROM departments WHERE EXISTS 
(SELECT sales.department_id, departments.id, sales.price, departments.name WHERE sales.department_id = departments.id AND sales.price > 98.00)
GROUP BY departments.id
