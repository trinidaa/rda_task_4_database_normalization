CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE WhAddress (
    ID INT AUTO_INCREMENT,
    WarehouseName VARCHAR(50) NOT NULL,
    WarehouseAddress VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE ProductInventory (
    ID INT AUTO_INCREMENT,
    ProductName VARCHAR(50) NOT NULL,
    WarehouseAmount INT NOT NULL,
    WarehouseID INT,
    FOREIGN KEY (WarehouseID) REFERENCES WhAddress(ID) ON DELETE NO ACTION,
    CountryID INT,
	FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

INSERT INTO WhAddress (WarehouseName, WarehouseAddress)
VALUES ('Warehouse-1', 'City-1, Street-1'),
       ('Warehouse-2', 'City-2, Street-2');

-- Вставка данных в Countries
INSERT INTO Countries (Name)
VALUES ('Country1'),
       ('Country2');

-- Вставка данных в ProductInventory
INSERT INTO ProductInventory (ProductName, WarehouseAmount, WarehouseID, CountryID)
VALUES ('AwersomeProduct', 2, 1, 1),
       ('AwersomeProduct', 5, 2, 2);
