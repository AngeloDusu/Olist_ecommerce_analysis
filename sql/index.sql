CREATE INDEX idx_order_id ON olist_orders_dataset(order_id(50));
CREATE INDEX idx_item_order_id ON olist_order_items_dataset(order_id(50));

-- Index untuk Tugas 2 (Produk)
CREATE INDEX idx_item_product_id ON olist_order_items_dataset(product_id(50));
CREATE INDEX idx_product_id ON olist_products_dataset(product_id(50));

-- Index untuk Tugas 3 & 5 (Customer)
CREATE INDEX idx_order_customer_id ON olist_orders_dataset(customer_id(50));
CREATE INDEX idx_customer_id ON olist_customers_dataset(customer_id(50));

-- Index untuk Tugas 7 (Seller)
CREATE INDEX idx_item_seller_id ON olist_order_items_dataset(seller_id(50));
CREATE INDEX idx_seller_id ON olist_sellers_dataset(seller_id(50));