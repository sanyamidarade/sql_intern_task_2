## Data Insertion and Handling Nulls

# Tool Used:
pgAdmin 

I used it to run SQL queries to add, change, and delete data.

# What I Did
I learned how to:

1]Insert data into tables

2]Update existing data

3]Delete data from the tables

All this was done using SQL commands in pgAdmin.

1. Inserting Data
We used the INSERT INTO command to add data to the tables.

Example:
INSERT INTO Customer (Id, Username, Email) 
VALUES ('C001', 'john_doe', 'john@example.com');
I did the same for all other tables like:

Product
Category
Ordertable
Order Item
ProductReview
ProductCategoryMap
Shipment
ShipmentItem 
Warehouse

 2. Updating Data
I used the UPDATE command to change data that was already in the tables.

Example:
UPDATE Customer
SET Email = 'john.doe@newmail.com'
WHERE Id = 'C001';

3. Deleting Data
I used the DELETE FROM command to remove unwanted data.

Example:
DELETE FROM OrderItem
WHERE Id = 'OI003';

NOTE: I deleted from child tables first, then the parent table.
Why? Because the child tables are linked to the parent using foreign keys, and we can’t delete a parent row unless the linked child rows are gone.

OUTCOME
Data was added successfully
Some data was updated (like names, email, quantity, etc.)
Unwanted records were removed

✅ Some data was updated (like names, email, quantity, etc.)
✅ Unwanted records were removed
✅ No errors related to foreign keys because we followed the right order
