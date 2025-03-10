ALTER TABLE product ADD COLUMN price double precision;
ALTER TABLE product ADD PRIMARY KEY (id);
ALTER TABLE orders ADD COLUMN date_created date;
ALTER TABLE orders ADD PRIMARY KEY (id);
ALTER TABLE order_product ADD FOREIGN KEY (product_id) REFERENCES product(id);
ALTER TABLE order_product ADD FOREIGN KEY (order_id) REFERENCES orders(id);
DROP TABLE product_info;
DROP TABLE orders_date;