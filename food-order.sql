ctreating tables

CREATE TABLE `food-order`.`tbl_admin`
 ( `id` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
`full_name` VARCHAR(100) NOT NULL , 
`username` VARCHAR(100) NOT NULL , 
`password` VARCHAR(255) NOT NULL , 
PRIMARY KEY (`id`)) 
ENGINE = InnoDB;

CREATE TABLE `food-order`.`tbl_category` 
( `id` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
`title` VARCHAR(100) NOT NULL , 
`image_name` VARCHAR(255) NOT NULL , 
`featured` VARCHAR(10) NOT NULL , 
`active` VARCHAR(10) NOT NULL , 
PRIMARY KEY (`id`)) 
ENGINE = InnoDB;

CREATE TABLE `food-order`.`tbl_food` 
( `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
 `title` VARCHAR(100) NOT NULL , 
`description` TEXT NOT NULL , 
`price` DECIMAL(10,2) NOT NULL , 
`image_name` VARCHAR(255) NOT NULL ,
 `category_id` INT UNSIGNED NOT NULL , 
`featured` VARCHAR(10) NOT NULL , 
`active` VARCHAR(10) NOT NULL ,
 PRIMARY KEY (`id`))
 ENGINE = InnoDB;

CREATE TABLE `food-order`.`tbl_order` 
( `id` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
`food` VARCHAR(150) NOT NULL , 
`price` DECIMAL(10,2) NOT NULL , 
`qty` INT NOT NULL , 
`total` DECIMAL(10,2) NOT NULL ,
 `order_date` DATETIME NOT NULL , 
`status` VARCHAR(50) NOT NULL , 
`customer_name` VARCHAR(150) NOT NULL , 
`customer_contact` VARCHAR(20) NOT NULL ,
 `customer_email` VARCHAR(150) NOT NULL , 
`customer_address` VARCHAR(255) NOT NULL , 
PRIMARY KEY (`id`)) 
ENGINE = InnoDB;