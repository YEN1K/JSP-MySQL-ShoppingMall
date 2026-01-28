CREATE TABLE cart_tbl(
   cart_no INT AUTO_INCREMENT PRIMARY KEY,
   cart_buyerId VARCHAR(20),
   cart_itemName VARCHAR(20),
   cart_buyPrice INT,
   cart_buyCount INT,
   cart_itemImage VARCHAR(20)
);
