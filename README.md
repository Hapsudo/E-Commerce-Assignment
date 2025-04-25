GROUP 87 LMS # E-Commerce-Assignment
Members/Collaborators
1. Catherina Abugah - catherine.abugah8@gmail.com
2. David Nganga - 

🛒 E-Commerce SQL Database
This project is an SQL-based relational database design for a fictional e-commerce platform. It models key elements such as products, brands, colors, sizes, variations, and attributes in a structured and scalable way using MySQL.

E_commerce
✅ Features
1.	Brand and Product Management

2.	Support for multiple sizes, colors, and variations

3.	Product categories with optional parent-child relationships

4.	Product attributes like material and color

5.	Product images for each variation

6.	Query support for filtering products by attributes, brand, or size

🧱 Database Tables
1. brand
Stores information about product brands.
2. color
Defines available color options.
3. size_category
Groups sizes into categories like Small, Medium, Large, etc.
4. product_category
Classifies products into categories like T-Shirts or Shoes. Supports hierarchical relationships.
5. product
Represents individual product listings, linked to brand and category.
6. product_item
A specific product item, differing by color, price, and code.
7. product_image
Stores image filenames for product items.
8. size_option
Size choices linked to size categories and optionally color-coded.
9. product_variation
Connects product items with size options and manages stock quantities.
10. attribute_type
Defines types of attributes like Material or Color.
11. attribute_category
Specific attribute values (e.g., Cotton for Material).
12. product_attribute
Assigns attributes to products.


ERD DIAGRAM 
![image](https://github.com/user-attachments/assets/56cacf01-c74f-4aab-a7bc-9d25ea6b6b3e)
