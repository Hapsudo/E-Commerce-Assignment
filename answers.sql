-- prduct table
USE e_commerce;
CREATE TABLE product(
productId INT PRIMARY KEY auto_increment,
productName VARCHAR(200) NOT NULL,
brand VARCHAR (200) NOT NULL,
basePrice DECIMAL (10,2) NOT NULL,
category_id INT,
FOREIGN KEY(category_id) REFERENCES category(category_id)
);
ALTER TABLE product
AUTO_INCREMENT = 1001;

INSERT INTO product (productName, brand, basePrice,category_id) VALUES
('Organic Cotton Polo Shirt', 'EcoStyle', 29.99,10001),
('Stretch Twill Chino Pants', 'Modern Fit', 55.00,10002),
('Relaxed Fit Hoodie', 'Casual Comfort', 39.75,10003),
('Floral Print Maxi Dress', 'Summer Bloom', 69.95,10004),
('Slim Fit Oxford Shirt', 'Sharp Tailoring', 42.50,10005),
('High-Waisted Wide Leg Trousers', 'Urban Chic', 58.00,10002),
('Lightweight Windbreaker Jacket', 'Active Shield', 75.25,10006),
('Ripped Denim Shorts', 'Street Edge', 32.99,10007),
('Bohemian Print Blouse', 'Free Spirit', 45.50,10001),
('Classic Trench Coat', 'Timeless Outerwear', 115.00,10006),
('Retro Running Sneakers', 'Flashback Footwear', 89.99,10008),
('Lifestyle Court Sneakers', 'City Stride', 72.50,10008),
('Breathable Mesh Trainers', 'AirFlow Active',67.00,10008),
('Skateboarding Performance Shoes', 'Grind King', 92.00,10008),
('High-Top Fashion Sneakers', 'Urban Ascent', 105.50,10008),
('Low-Top Canvas Classics', 'Easy Go', 49.99,10008),
('Athletic Cross-Training Shoes', 'Power Trainer', 78.25,10008),
('Slip-On Comfort Sneakers', 'Relaxed Runner', 55.00,10008),
('Vegan Leather Sneakers', 'Ethical Steps', 82.75,10008),
('Futuristic Design Sneakers', 'Tech Runner', 118.00,10008),
('Fine Knit Turtleneck Sweater', 'Elegant Warmth', 95.00,10009),
('Chunky Knit Wool Sweater', 'Cozy Comforts', 79.50,10009),
('Striped Raglan Sleeve Sweater', 'Nautical Knit', 62.75,10009),
('Cashmere V-Neck Pullover', 'Soft Luxury', 145.00,10009),
('Fair Isle Pattern Sweater', 'Winter Heritage', 88.25,10009),
('Lightweight Cotton Cardigan', 'Spring Layer', 55.99,10009),
('Oversized Knit Sweater Dress', 'Relaxed Style', 70.50,10004),
('Mock Neck Ribbed Sweater', 'Modern Texture', 68.00,10009),
('Graphic Print Sweatshirt', 'Statement Piece', 49.75,10003),
('Boiled Wool Jacket Sweater', 'Alpine Edge', 102.00,10006),
('Slim Fit Jeans', 'Levi\'s', 69.99,10002),
('Straight Leg Jeans', 'Wrangler', 45.50,10002),
('Bootcut Jeans', 'Lee', 52.75,10002),
('Skinny Jeans', 'H&M', 34.99,10002),
('Relaxed Fit Jeans', 'Gap', 59.00,10002);

-- category table
USE e_commerce;
CREATE TABLE category(
category_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
category VARCHAR (100) UNIQUE NOT NULL
);

ALTER TABLE category
AUTO_INCREMENT = 10001;
INSERT INTO category(category) VALUES 
('Tops'),
('Pants'),
('Sweatshirts & Hoodies'),
('Dresses'),
('Shirts'),
('Outerwear'),
('Shorts'),
('Sneakers'),
('Sweaters');

-- brand table
USE e_commerce;
CREATE TABLE brand(
brandId INT PRIMARY KEY AUTO_INCREMENT,
brandName VARCHAR (100) NOT NULL
);
ALTER TABLE brand
AUTO_INCREMENT = 2001;

INSERT INTO brand (brandName) VALUES 
('EcoStyle'),
('Modern Fit'),
('Casual Comfort'),
('Summer Bloom'),
('Sharp Tailoring'),
('Urban Chic'),
('Active Shield'),
('Street Edge'),
('Free Spirit'),
('Timeless Outerwear'),
('Flashback Footwear'),
('City Stride'),
('AirFlow Active'),
('Grind King'),
('Urban Ascent'),
('Easy Go'),
('Power Trainer'),
('Relaxed Runner'),
('Ethical Steps'),
('Tech Runner'),
('Elegant Warmth'),
('Cozy Comforts'),
('Nautical Knit'),
('Soft Luxury'),
('Winter Heritage'),
('Spring Layer'),
('Relaxed Style'),
('Modern Texture'),
('Statement Piece'),
('Alpine Edge'),
('Levi''s'),
('Wrangler'),
('Lee'),
('H&M'),
('Gap');
 
 -- size_option table
 USE e_commerce;
CREATE TABLE size_option (
    size_id INT PRIMARY KEY AUTO_INCREMENT,
    size_value VARCHAR(20) NOT NULL , 
    _description VARCHAR(255),          -
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);

ALTER TABLE size_option
AUTO_INCREMENT = 3001;

INSERT INTO size_option (size_value, _description, category_id) VALUES
('7', 'US Men\'s 7', 10008),
('8', 'US Men\'s 8', 10008),
('9', 'US Men\'s 9', 10008),
('10', 'US Men\'s 10', 10008),
('11', 'US Men\'s 11', 10008),
('7', 'US Women\'s 7', 10008),
('8', 'US Women\'s 8', 10008),
('9', 'US Women\'s 9', 10008),
('10', 'US Women\'s 10', 10008),
('28', 'Waist 28 inches', 10007),
('30', 'Waist 30 inches', 10007),
('32', 'Waist 32 inches', 10007),
('34', 'Waist 34 inches', 10007),
('36', 'Waist 36 inches', 10007),
('S', 'Small', 10002),
('M', 'Medium', 10002),
('L', 'Large', 10002),
('S', 'Small', 10005),
('M', 'Medium', 10005),
('L', 'Large', 10005),
('XS', 'Extra Small',10003),  
('XL', 'Extra Large', 10003),
('XXL', 'Double Extra Large',10003),
('0', 'US Dress Size 0', 10004),
('2', 'US Dress Size 2', 10004),
('4', 'US Dress Size 4', 10004),
('6', 'US Dress Size 6', 10004),
('S', 'Small', 10006),
('M', 'Medium', 10006),
('L', 'Large', 10006),
('S', 'Small', 10009),
('M', 'Medium', 10009),
('L', 'Large', 10009);