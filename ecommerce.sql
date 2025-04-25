CREATE DATABASE E_commerce;


-- Creating brand Table
USE E_commerce;

CREATE TABLE brand ( 
    brand_id INT PRIMARY KEY AUTO_INCREMENT, 
    brand_name VARCHAR(100) NOT NULL,
    brand_description VARCHAR(100) NOT NULL
);

INSERT INTO brand (brand_name, brand_description)
VALUES ('Nike', 'Leading global brand in sportswear and footwear'),
('Adidas', 'Definitive love in sportswear and footwear'),
('Mango', 'Leading global brand in clothes of good material');


-- Creating table color
CREATE TABLE color ( 
    color_id INT PRIMARY KEY AUTO_INCREMENT, 
    color_name VARCHAR(100) NOT NULL
);

INSERT INTO color (color_name)
VALUES ('Red'), ('Blue'), ('Black'),
('Jungle Green'), ('Purple'), ('Black'),
('Indigo'), ('Mauve'), ('White');


-- Creating table size_category
CREATE TABLE size_category ( 
    size_category_id INT PRIMARY KEY AUTO_INCREMENT, 
    category_name VARCHAR(100) NOT NULL
);

INSERT INTO size_category (category_name)
VALUES ('Small'), ('Medium'), ('Large'),
('Extra Small'), ('2XL'), ('Large'),
('Small'), ('Medium'), ('Extra Large');

INSERT INTO product_category (category_name, category_image, category_description, size_category_id, parent_category_id)
VALUES 
('T-Shirts', 'tshirt_image.jpg', 'Comfortable cotton t-shirts', 1, NULL),
('Shoes', 'shoes_image.jpg', 'Sports and lifestyle footwear', 2, NULL),
('TV', 'shoes_image.jpg', 'Electronics', 3, NULL);

-- Creating table product_category 
CREATE TABLE product_category ( 
    product_category_id INT PRIMARY KEY AUTO_INCREMENT, 
    category_name VARCHAR(200) NOT NULL,
    category_image VARCHAR(400) NOT NULL,
    category_description VARCHAR(200) NOT NULL,
    size_category_id INT, 
    parent_category_id INT, 
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id),
    FOREIGN KEY (parent_category_id) REFERENCES product_category(product_category_id) -- Self referencing

INSERT INTO product (product_category_id, brand_id, product_name, product_description, model_height, model_wearing, caring_instructions)
VALUES 
(1, 1, 'Nike Air Max', 'A popular sneaker with great comfort and style.', '6 feet', 'Size 10', 'Machine wash with cold water.'),
(2, 2, 'Adidas Duo', 'A statement shoes.', '7 feet', 'Size 8', 'Not advisable for Machine wash.'),
(3, 3, 'Mango Blue', 'A great clothe that can be worn limitless', '5 feet', 'Size 12', 'Machine wash in any condition.');

-- Creating table product
CREATE TABLE product ( 
    product_id INT PRIMARY KEY AUTO_INCREMENT, 
    product_category_id INT, 
    brand_id INT, 
    product_name VARCHAR(200) NOT NULL,
    product_description VARCHAR(5000) NOT NULL,
    model_height VARCHAR(200) NOT NULL,
    model_wearing VARCHAR(200) NOT NULL,
    caring_instructions VARCHAR(5000) NOT NULL,
    FOREIGN KEY (product_category_id) REFERENCES product_category(product_category_id),
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id)
);

INSERT INTO product (product_category_id, brand_id, product_name, product_description, model_height, model_wearing, caring_instructions)
VALUES 
(1, 1, 'Nike Air Max', 'A popular sneaker with great comfort and style.', '6 feet', 'Size 10', 'Machine wash with cold water.'),
(2, 2, 'Adidas Duo', 'A statement shoes.', '7 feet', 'Size 8', 'Not advisable for Machine wash.'),
(3, 3, 'Mango Blue', 'A great clothe that can be worn limitless', '5 feet', 'Size 12', 'Machine wash in any condition.');

-- Creating table product item
CREATE TABLE product_item ( 
	product_item_id INT PRIMARY KEY AUTO_INCREMENT, 
    product_id INT, 
    color_id INT, 
    brand_id INT, 
    original_price DECIMAL(10, 2) NOT NULL,
    sale_price DECIMAL(10, 2) NOT NULL,
    product_code VARCHAR(50) NOT NULL, 
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

INSERT INTO product (product_category_id, brand_id, product_name, product_description, model_height, model_wearing, caring_instructions)
VALUES 
(1, 1, 'Nike Air Max', 'A popular sneaker with great comfort and style.', '6 feet', 'Size 10', 'Machine wash with cold water.'),
(2, 2, 'Adidas Duo', 'A statement shoes.', '7 feet', 'Size 8', 'Not advisable for Machine wash.'),
(3, 3, 'Mango Blue', 'A great clothe that can be worn limitless', '5 feet', 'Size 12', 'Machine wash in any condition.');

INSERT INTO product_item (product_id, color_id, brand_id, original_price, sale_price, product_code)
VALUES 
(1, 1, 1, 120.00, 99.99, 'NIKE-001'),
(2, 2, 2, 5000.00, 4599.99, 'ADIDAS-001'),
(3, 3, 3, 75000.00, 73000.99, 'MANGO-001');

-- Creating table product image
CREATE TABLE product_image ( 
	image_id INT PRIMARY KEY AUTO_INCREMENT, 
    product_item_id INT, 
    image_filename VARCHAR(50) NOT NULL,
    FOREIGN KEY (product_item_id) REFERENCES product_item(product_item_id)
);

INSERT INTO product_image (product_item_id, image_filename)
VALUES 
(1, 'nike_air_max.jpg'),
(2, 'adidas_blue.jpg'),
(3, 'mango.jpg');

-- Creating table size option
CREATE TABLE size_option ( 
	size_id INT PRIMARY KEY AUTO_INCREMENT, 
    size_name VARCHAR(100) NOT NULL,
    size_color VARCHAR(100) NOT NULL,
    size_category_id INT,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

INSERT INTO size_option (size_name, size_color, size_category_id)
VALUES 
INSERT INTO size_option (size_name, size_color, size_category_id)
VALUES 
('Small', 'Red', 1), 
('Extra Small', 'Blue', 1), 
('Large', 'Black', 1),
('Extra Small', 'Purple', 2),
('Small', 'Mauve', 3);

-- Creating table product variation
CREATE TABLE product_variation ( 
	variation_id INT PRIMARY KEY AUTO_INCREMENT, 
    product_item_id INT NOT NULL,
    size_id INT NOT NULL,
    qty_in_stock INT,
    FOREIGN KEY (product_item_id) REFERENCES product_item(product_item_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

INSERT INTO product_variation (product_item_id, size_id, qty_in_stock)
VALUES 
(1, 1, 50), 
(1, 2, 30), 
(1, 3, 20);

-- Creating table attribute type
CREATE TABLE attribute_type ( 
	attribute_type_id INT PRIMARY KEY AUTO_INCREMENT, 
    attribute_name VARCHAR(100) NOT NULL
);

INSERT INTO attribute_type (attribute_name)
VALUES ('Material'), ('Color');

-- Creating table attribute category
CREATE TABLE attribute_category ( 
	attribute_category_id INT PRIMARY KEY AUTO_INCREMENT, 
	attribute_type_id INT NOT NULL,
    attribute_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);

INSERT INTO attribute_category (attribute_type_id, attribute_name)
VALUES 
(1, 'Cotton'), 
(2, 'Red');

-- Creating table product attribute
CREATE TABLE product_attribute ( 
	product_id INT NOT NULL,
	attribute_category_id INT NOT NULL,
	FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id)
);

INSERT INTO product_attribute (product_id, attribute_category_id)
VALUES 
(1, 1), 
(1, 2);



/* Starting to test codes and do the analysis with the below codes.
Listing product items */
SELECT * FROM product_item WHERE product_id = 1;


-- List product name with its material attribute
SELECT p.product_name, ac.attribute_name
FROM product p
JOIN product_attribute pa ON p.product_id = pa.product_id
JOIN attribute_category ac ON pa.attribute_category_id = ac.attribute_category_id
JOIN attribute_type at ON ac.attribute_type_id = at.attribute_type_id
WHERE at.attribute_name = 'Material';


-- Get product and brand
SELECT p.product_name, b.brand_name
FROM product p
JOIN brand b ON p.brand_id = b.brand_id;

-- List product prices by size and color
SELECT 
  p.product_id, 
  pi.product_item_id, 
  p.product_name, 
  c.color_name, 
  s.size_name,
  pi.original_price AS original_price,
  pi.sale_price AS sale_price
FROM product_item pi
INNER JOIN product p ON pi.product_id = p.product_id
INNER JOIN color c ON pi.color_id = c.color_id
INNER JOIN product_variation pv ON pi.product_item_id = pv.product_item_id
INNER JOIN size_option s ON pv.size_id = s.size_id
ORDER BY p.product_name ASC, s.size_name ASC;

