-- Update product name
UPDATE Product
SET Name = 'OnePlus 12R'
WHERE Id = 'P003';

-- Update customer email
UPDATE Customer
SET Email = 'john_doe_new@example.com'
WHERE Id = 'C001';

-- Update product review title
UPDATE ProductReview
SET Title = 'Perfect for Work!'
WHERE Id = 'REV002';
