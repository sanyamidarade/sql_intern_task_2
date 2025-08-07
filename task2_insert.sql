-- Customer Table
INSERT INTO Customer (Id, Username, Email) VALUES
('C001', 'john_doe', 'john@example.com'),
('C002', 'jane_smith', 'jane@example.com'),
('C003', 'alice_jones', 'alice@example.com'),
('C004', 'mark_ray', 'mark@example.com'),
('C005', 'bob_miller', 'bob@example.com');

-- Product Table
INSERT INTO Product (Id, ProductTypeId, Name, ShortDescription) VALUES
('P001', 'PT01', 'iPhone 14', 'Apple iPhone 14 - 128GB, Midnight'),
('P002', 'PT02', 'Samsung Galaxy S22', 'Samsung Galaxy S22 - 256GB, Phantom Black'),
('P003', 'PT01', 'OnePlus 12', 'OnePlus 12 - 256GB, Green'),
('P004', 'PT02', 'Google Pixel 8', 'Google Pixel 8 - 128GB, Obsidian'),
('P005', 'PT03', 'Motorola Edge 40', 'Motorola Edge 40 - 128GB, Blue');

-- Category Table
INSERT INTO Category (Id, MetaDescription, MetaTitle, PageSize) VALUES
('CAT01', 'Smartphones from top brands', 'Smartphones', '20'),
('CAT02', 'Latest electronic gadgets', 'Electronics', '15'),
('CAT03', 'High-end Android phones', 'Premium Phones', '10'),
('CAT04', 'Budget Phones for Everyone', 'Budget Phones', '25'),
('CAT05', 'Newly Launched Devices', 'New Arrivals', '18');


-- Product_Category_Map Table
INSERT INTO Product_Category_Map (Id, ProductId, CategoryId, IsFeaturedProduct, DisplayOrder) VALUES
('PCM01', 'P001', 'CAT01', 'True', '1'),
('PCM02', 'P002', 'CAT01', 'True', '2'),
('PCM03', 'P002', 'CAT02', 'False', '3'),
('PCM04', 'P003', 'CAT01', 'True', '4'),
('PCM05', 'P004', 'CAT03', 'False', '5');

-- Ordertable
INSERT INTO Ordertable (Id, StoreId, CustomerId, BillingAddressId, ShippingAddressId) VALUES
('O001', 'S001', 'C001', 'ADDR001', 'ADDR002'),
('O002', 'S002', 'C002', 'ADDR003', 'ADDR004'),
('O003', 'S003', 'C003', 'ADDR005', 'ADDR006'),
('O004', 'S004', 'C004', 'ADDR007', 'ADDR008'),
('O005', 'S005', 'C005', 'ADDR009', 'ADDR010');

-- OrderItem Table
INSERT INTO OrderItem (Id, OrderId, ProductId, Quantity) VALUES
('OI001', 'O001', 'P001', '1'),
('OI002', 'O001', 'P002', '2'),
('OI003', 'O002', 'P002', '1'),
('OI004', 'O003', 'P003', '1'),
('OI005', 'O004', 'P004', '2'),
('OI006', 'O005', 'P005', '1');

-- ProductReview Table
INSERT INTO ProductReview (Id, CustomerId, ProductId, StoreId, Title, ReviewText) VALUES
('REV001', 'C001', 'P001', 'S001', 'Awesome Phone!', 'Battery life is amazing. Camera is top-notch.'),
('REV002', 'C002', 'P002', 'S002', 'Great for work', 'Smooth performance and good display.'),
('REV003', 'C003', 'P003', 'S003', 'Not worth it', 'Heating issue and lags often.'),
('REV004', 'C004', 'P004', 'S001', 'Excellent build', 'Solid materials and elegant design.'),
('REV005', 'C005', 'P005', 'S002', 'Just okay', 'Works fine but overpriced.');

-- Shipment Table
INSERT INTO Shipment (Id, OrderId, TrackingNumber, TotalWeight, ShippedDateUtc) VALUES
('SHIP001', 'O001', 'TRACK123456', '1.5', '2025-08-01'),
('SHIP002', 'O002', 'TRACK654321', '1.0', '2025-08-02'),
('SHIP003', 'O003', 'TRACK789012', '2.2', '2025-08-03'),
('SHIP004', 'O004', 'TRACK345678', '3.0', '2025-08-04'),
('SHIP005', 'O005', 'TRACK987654', '1.8', '2025-08-05');

-- ShipmentItem Table
INSERT INTO ShipmentItem (Id, ShipmentId, OrderItemId) VALUES
('SI001', 'SHIP001', 'OI001'),
('SI002', 'SHIP001', 'OI002'),
('SI003', 'SHIP002', 'OI003'),
('SI004', 'SHIP003', 'OI004'),
('SI005', 'SHIP004', 'OI005'),
('SI006', 'SHIP005', 'OI006');


-- Warehouse Table
INSERT INTO Warehouse (Id, Name, AdminComment, AddressId) VALUES
('WH001', 'Main Central Warehouse', 'Primary stock hub for all orders', 'ADDR001'),
('WH002', 'Backup Storage Unit', 'Used during peak demand', 'ADDR005'),
('WH003', 'Regional Warehouse North', 'Covers northern zones', 'ADDR010'),
('WH004', 'Seasonal Stock Depot', 'Used during festive sales', 'ADDR015'),
('WH005', 'Returns Processing Unit', 'Handles all returned items', 'ADDR020');

