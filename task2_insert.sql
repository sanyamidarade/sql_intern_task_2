-- Customer Table
INSERT INTO Customer (Id, Username, Email) VALUES
('C001', 'john_doe', 'john@example.com'),
('C002', 'jane_smith', 'jane@example.com');

-- Product Table
INSERT INTO Product (Id, ProductTypeId, Name, ShortDescription) VALUES
('P001', 'PT01', 'iPhone 14', 'Apple iPhone 14 - 128GB, Midnight'),
('P002', 'PT02', 'Samsung Galaxy S22', 'Samsung Galaxy S22 - 256GB, Phantom Black');

-- Category Table
INSERT INTO Category (Id, MetaDescription, MetaTitle, PageSize) VALUES
('CAT01', 'Smartphones from top brands', 'Smartphones', '20'),
('CAT02', 'Latest electronic gadgets', 'Electronics', '15');

-- Product_Category_Map Table
INSERT INTO Product_Category_Map (Id, ProductId, CategoryId, IsFeaturedProduct, DisplayOrder) VALUES
('PCM01', 'P001', 'CAT01', 'True', '1'),
('PCM02', 'P002', 'CAT01', 'True', '2'),
('PCM03', 'P002', 'CAT02', 'False', '3');

-- Ordertable
INSERT INTO Ordertable (Id, StoreId, CustomerId, BillingAddressId, ShippingAddressId) VALUES
('O001', 'S001', 'C001', 'ADDR001', 'ADDR002'),
('O002', 'S002', 'C002', 'ADDR003', 'ADDR004');

-- OrderItem Table
INSERT INTO OrderItem (Id, OrderId, ProductId, Quantity) VALUES
('OI001', 'O001', 'P001', '1'),
('OI002', 'O001', 'P002', '2'),
('OI003', 'O002', 'P002', '1');

-- ProductReview Table
INSERT INTO ProductReview (Id, CustomerId, ProductId, StoreId, Title, ReviewText) VALUES
('REV001', 'C001', 'P001', 'S001', 'Awesome Phone!', 'Battery life is amazing. Camera is top-notch.'),
('REV002', 'C002', 'P002', 'S002', 'Great for work', 'Smooth performance and good display.');

-- Shipment Table
INSERT INTO Shipment (Id, OrderId, TrackingNumber, TotalWeight, ShippedDateUtc) VALUES
('SHIP001', 'O001', 'TRACK123456', '1.5', '2025-08-01'),
('SHIP002', 'O002', 'TRACK654321', '1.0', '2025-08-02');

-- ShipmentItem Table
INSERT INTO ShipmentItem (Id, ShipmentId, OrderItemId) VALUES
('SI001', 'SHIP001', 'OI001'),
('SI002', 'SHIP001', 'OI002'),
('SI003', 'SHIP002', 'OI003');

-- Warehouse Table
INSERT INTO Warehouse (Id, Name, AdminComment, AddressId) VALUES
('WH001', 'Main Central Warehouse', 'Primary stock hub for all orders', 'ADDR001'),
('WH002', 'Backup Storage Unit', 'Used during peak demand', 'ADDR005');
