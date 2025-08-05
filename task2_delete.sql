-- Delete the shipment item 
DELETE FROM ShipmentItem
WHERE Id = 'SI003';

-- Delete the order item
DELETE FROM OrderItem
WHERE Id = 'OI003';

-- Delete the product review
DELETE FROM ProductReview
WHERE Id = 'REV002';

-- Delete a product-category mapping
DELETE FROM Product_Category_Map
WHERE Id = 'PCM03';



-- Delete orders placed by the customer
DELETE FROM Ordertable
WHERE CustomerId = 'C002';

--  delete the customer
DELETE FROM Customer
WHERE Id = 'C002';

