CREATE DATABASE KALBE;

USE KALBE;

CREATE TABLE Inventory (
    Item_code INT PRIMARY KEY,
    Item_name VARCHAR(255) NOT NULL,
    Item_price DECIMAL(10, 2),
    Item_total INT
);

INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES
    (2341, 'Promag Tablet', 3000),
    (2342, 'Hydro Coco 250ML', 7000),
    (2343, 'Nutrive Benecol 100ML', 20000),
    (2344, 'Blackmores Vit C 500Mg', 95000),
    (2345, 'Entrasol Gold 370G', 90000);

SELECT Item_name
FROM Inventory
WHERE Item_total = (SELECT MAX(Item_total) FROM Inventory);

UPDATE Inventory
SET Item_price = 25000
WHERE Item_code = 2343;

DELETE FROM Inventory
WHERE Item_total = (SELECT MIN(Item_total) FROM Inventory);
