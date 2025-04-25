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

-- product_image table

USE e_commerce;
CREATE TABLE product_image(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
imageUrl VARCHAR (500) NOT NULL
);
ALTER TABLE product_image
AUTO_INCREMENT = 701;

INSERT INTO product_image(imageUrl) VALUES 
("https://unsplash.com/photos/green-crew-neck-shirt-and-gray-crew-neck-shirt-itUsEU7GgDU"),
("https://unsplash.com/photos/a-pair-of-hands-holding-a-pair-of-jeans-WBnjmUWwqVo"),
("https://unsplash.com/photos/a-man-in-a-blue-hoodie-sitting-on-a-bench-WWcxE-MkhNw"),
("https://unsplash.com/photos/woman-in-blue-and-white-floral-spaghetti-strap-dress-rp9ZsjEbFvI"),
("https://unsplash.com/photos/blue-polo-shirt-on-pink-textile-OsvD4y41C4g"),
("https://unsplash.com/photos/a-woman-in-a-black-shirt-and-blue-jeans-IpQA-Yp0iW0"),
("http://unsplash.com/photos/a-woman-in-a-green-jacket-and-sunglasses-D4S75Z1bcsU"),
("https://www.istockphoto.com/photo/old-worn-jean-shorts-gm499721799-42786948"),
("https://unsplash.com/photos/a-woman-standing-with-her-hands-on-her-hips-cmzbt8xRn_c"),
("http://unsplash.com/photos/a-woman-in-a-trench-coat-posing-for-a-picture-5vrque5NVHI"),
("https://unsplash.com/photos/a-black-and-white-photo-of-a-pair-of-shoes-9VGRc6rfSsA"),
("https://unsplash.com/photos/a-pair-of-white-and-black-lacoste-sneakers-vsDTDkRvnzo"),
("https://unsplash.com/photos/close-up-of-legs-of-unrecognizable-man-running-in-the-town-puddle-aHYzV-ezdis"),
("https://unsplash.com/photos/man-in-black-and-white-nike-shoes-and-black-pants-jABGwGQbzNU"),
("https://unsplash.com/photos/white-and-orange-nike-athletic-shoes-b9KdwnKWhRk"),
("https://unsplash.com/photos/a-pair-of-shoes-sitting-on-top-of-a-wooden-table-sJGlVPtFIJ4"),
("https://unsplash.com/photos/a-pair-of-new-balance-shoes-sitting-on-a-wooden-floor-djb1b4zmsN8"),
("https://unsplash.com/photos/a-hand-holds-a-pair-of-cream-colored-sneakers-mLntf5GgqhM"),
("https://unsplash.com/photos/a-close-up-of-a-person-wearing-a-pair-of-boots-7hD5_5GfYcA"),
("https://unsplash.com/photos/white-and-black-nike-athletic-shoe-XJUWWhAbcCY"),
("https://unsplash.com/photos/a-green-knitted-piece-of-clothing-GcSXNqXdPOk"),
("https://unsplash.com/photos/a-young-girl-wearing-a-striped-sweater-and-pink-pants-eCq75xc4UWo"),
("https://unsplash.com/photos/a-woman-wearing-a-white-sweater-and-a-white-scarf-bb2nq11CePs"),
("https://unsplash.com/photos/a-woman-wearing-a-sweater-and-a-tie-tK6mBrIkCOs"),
("https://unsplash.com/photos/a-woman-in-a-blue-dress-posing-for-a-picture-hBOzoT0iPt4"),
("https://unsplash.com/photos/man-in-red-crew-neck-shirt-wearing-silver-necklace-EuB4kTlgdq4"),
("https://unsplash.com/photos/a-woman-standing-against-a-wall-wearing-a-sweatshirt-and-ripped-jeans-mOSOF13-lJQ"),
("https://unsplash.com/photos/a-person-holding-a-green-sweater-on-a-hanger-daxK3rjWHm0"),
("https://unsplash.com/photos/woman-standing-wearing-jeans-and-white-top-zDyJOj8ZXG0"),
("https://unsplash.com/photos/a-persons-legs-and-shoes-WN6NdH8uURQ"),
("https://unsplash.com/photos/a-woman-in-a-black-t-shirt-and-light-blue-jeans-Qg7sSD7190g"),
("https://unsplash.com/photos/a-woman-leaning-against-a-wall-wearing-a-black-top-jtwPgruwXmM"),
("https://unsplash.com/photos/a-couple-of-people-that-are-sitting-on-a-chair-3VcJKrQ_PzM"),
("http://unsplash.com/photos/a-woman-standing-in-a-doorway-with-her-hands-on-her-hips-hizcQ28c4Oo");

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
_description VARCHAR(255),          
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

-- variation table
USE e_commerce;
CREATE TABLE variation (
variationId INT PRIMARY KEY AUTO_INCREMENT,
style VARCHAR (100) NOT NULL,
color VARCHAR (100) NOT NULL,
size VARCHAR (100) NOT NULL
);
ALTER TABLE variation
AUTO_INCREMENT = 4001

INSERT INTO variation (style,color,size) VALUES 
('Running Shoes', 'Electric Blue', 'US 9.5'),
('Leather Boots', 'Dark Brown', 'US 42'),
('Canvas Sneakers', 'Off-White', 'US 7'),
('Canvas Sneakers', 'Off-black', 'US 10'),
('Suede Loafers', 'Burgundy', 'US 8'),
('Athletic Sandals', 'Black/Grey', 'US 10'),
('Dress', 'Black', 'S'),
('Outerwear', 'Black', 'M'),
('Pants', 'Blue', '30'),
('Shirt', 'White', 'L'),
('Shorts', 'Khaki', '32'),
('Sneakers', 'White/Red', 'US 8'),
('Sweater', 'Grey', 'M'),
('Sweatshirt & Hoodie', 'Navy', 'L'),
('Top', 'Striped', 'S'),
('Dress', 'Floral Print', 'S'),
('Dress', 'Black', 'M'),
('Dress', 'Red', 'L'),
('Dress', 'Yellow', 'XS'),
('Dress', 'Navy', '6'),
('Pants', 'SkyBlue Denim', '30x32'),
('Pants', 'Blue Denim', '30x32');

-- product_variation table
USE e_commerce;
CREATE TABLE product_variation(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
productId INT,
variationId INT,
FOREIGN KEY(productId) REFERENCES product(productId),
FOREIGN KEY(variationId) REFERENCES variation(variationId)
);
ALTER TABLE product_variation
AUTO_INCREMENT = 20001;

INSERT INTO product_variation (productId,variationId) VALUES
(1001,4010),
(1001,4014),
(1002,4008),
(1006,4008),
(1003, 4013),
(1019, 4002),
(1020, 4001),
(1011, 4001),
(1011,4011),
(1016, 4003),
(1017,4005),
(1004, 4015),
(1004, 4019),
(1007, 4007),
(1023, 4014),
(1022, 4022),
(1021, 4012),
(1019, 4002),
(1018, 4003),
(1021, 4012),
(1021, 4021);

--product_attribute table
use e_commerce;
CREATE TABLE product_attribute(
attributeId INT PRIMARY KEY AUTO_INCREMENT,
style VARCHAR(100) NOT NULL,
material VARCHAR(100) NOT NULL,
color VARCHAR(50) NOT NULL,
size VARCHAR (100) NOT NULL
);
ALTER TABLE product_attribute
AUTO_INCREMENT = 6001;

INSERT INTO product_attribute (style, material, color, size) VALUES
('Sneakers', 'Canvas', 'White', '9'),
('Boots', 'Leather', 'Brown', '10'),
('Sandals', 'Synthetic', 'Black', '7'),
('Flats', 'Suede', 'Beige', '8'),
('Running Shoes', 'Mesh', 'Blue/Grey', '11'),
('Heels', 'Patent Leather', 'Red', '6'),
('Loafers', 'Leather', 'Black', '9.5'),
('Hiking Boots', 'Leather/Textile', 'Brown/Green','7'),
('Flip-flops', 'Rubber', 'Navy','7'),
('Dress Shoes', 'Leather', 'Black', '9'),
('T-shirt', 'Cotton', 'Navy Blue', 'M'),
('Dress', 'Polyester', 'Floral Print', 'S'),
('Pants', 'Denim', 'Dark Wash', '32'),
('Skirt', 'Cotton', 'Red', '8'),
('Sweater', 'Wool', 'Grey', 'L'),
('Jacket', 'Leather', 'Black', 'M'),
('T-shirt', 'Cotton Blend', 'White', 'XL'),
('Dress', 'Silk', 'Emerald Green', '6'),
('Pants', 'Linen', 'Beige', '30'),
('Skirt', 'Denim', 'Light Wash', '10');

-- attribute_type table
USE e_commerce;
CREATE TABLE attribute_type(
id INT PRIMARY KEY AUTO_INCREMENT,
attributeType VARCHAR (50) NOT NULL
);
ALTER TABLE attribute_type
AUTO_INCREMENT = 1;

INSERT INTO attribute_type(attributeType) VALUES 
("TEXT"),
("TEXT"),
("TEXT"),
("NUMBER");

-- size category table
USE e_commerce;
CREATE TABLE size_category(
id INT PRIMARY KEY AUTO_INCREMENT,
sizeCategory VARCHAR (50) NOT NULL
);

ALTER TABLE size_category
AUTO_INCREMENT = 1;
INSERT INTO size_category(sizeCategory) VALUES 
("clothing sizes"),
("shoe sizes");