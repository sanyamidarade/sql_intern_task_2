--  Delete ShipmentItem related to O005
DELETE FROM ShipmentItem
WHERE OrderItemId = 'OI006';

--  Delete Shipment for Order O005
DELETE FROM Shipment
WHERE OrderId = 'O005';

--  Delete OrderItem for Order O005
DELETE FROM OrderItem
WHERE OrderId = 'O005';

--  Delete ProductReview by Customer C005
DELETE FROM ProductReview
WHERE CustomerId = 'C005';

--  Delete Order O005
DELETE FROM Ordertable
WHERE Id = 'O005';

--  Delete Customer C005
DELETE FROM Customer
WHERE Id = 'C005';
