-- Update a customer's email
UPDATE Customer
SET Email = 'john.doe@newmail.com'
WHERE Id = 'C001';

-- Update a product name
UPDATE Product
SET Name = 'iPhone 14 Pro Max'
WHERE Id = 'P001';

-- Update a category title
UPDATE Category
SET MetaTitle = 'Mobile Phones'
WHERE Id = 'CAT01';

-- Update order shipping address
UPDATE Ordertable
SET ShippingAddressId = 'ADDR010'
WHERE Id = 'O001';

-- Update quantity in OrderItem
UPDATE OrderItem
SET Quantity = '3'
WHERE Id = 'OI002';

-- Update product review text
UPDATE ProductReview
SET ReviewText = 'Absolutely love this phone. Best in the market!'
WHERE Id = 'REV001';

-- Update shipment tracking number
UPDATE Shipment
SET TrackingNumber = 'NEWTACK999'
WHERE Id = 'SHIP001';

-- Update featured product flag
UPDATE Product_Category_Map
SET IsFeaturedProduct = 'False'
WHERE Id = 'PCM01';

-- Update warehouse name
UPDATE Warehouse
SET Name = 'Updated Central Warehouse'
WHERE Id = 'WH001';
