-- Create a new database for products if not exists
CREATE DATABASE IF NOT EXISTS product_database;

--Switch to the created database
USE product_database

-- Create a table for storing information about product
CREATE TABLE IF NOT EXISTS product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    desc TEXT NOT NULL,
    SKU VARCHAR(100) NOT NULL,
    category_id INT NOT NULL,
    inventory_id INT NOT NULL,
    price DECIMAL NOT NULL,
    discount_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP NOT NULL, 
    FOREIGN KEY (category_id) REFERENCES product_category(id);
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(id);
    FOREIGN KEY ( discount_id) REFERENCES discount(id);
);

-- Create a table for storing information about product category
CREATE TABLE IF NOT EXISTS product_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    desc TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP NOT NULL, 
);

-- Create a table for storing information about product inventory
CREATE TABLE IF NOT EXISTS product_inventory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quantity INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP NOT NULL, 
);

-- Create a table for storing information about discount
CREATE TABLE IF NOT EXISTS discount (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    desc TEXT NOT NULL,
    discount_percent DECIMAL NOT NULL,
    active BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP NOT NULL, 
);

