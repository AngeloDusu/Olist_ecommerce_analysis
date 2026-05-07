# CEO Olist butuh laporan performa makro. Pertanyaannya:
# 1. "Berapa total pendapatan (dari harga barang) dan total jumlah pesanan unik yang terjadi pada setiap bulannya?"
SELECT 
    DATE_FORMAT(od.order_purchase_timestamp, '%Y-%m') AS bulan_transaksi,
    COUNT(DISTINCT oi.order_id) AS total_pesanan,
    ROUND(SUM(oi.price), 2) AS total_pendapatan
FROM olist_order_items_dataset oi 
JOIN olist_orders_dataset od
    ON oi.order_id = od.order_id 
GROUP BY bulan_transaksi
ORDER BY bulan_transaksi ASC;
 

#2.  Tampilkan 5 kategori produk yang menghasilkan total pendapatan paling tinggi sepanjang masa.
select 
	ROUND(SUM(oi.price),2) as total_pendapatan,
	op.product_category_name as nama_kategori
from olist_order_items_dataset oi 
join olist_products_dataset op 
	on op.product_id = oi.product_id 
group by nama_kategori
order by total_pendapatan desc
limit 5;


#3. Tampilkan 5 kota asal pelanggan yang menyumbang jumlah pesanan unik paling banyak
select
	COUNT(distinct od.order_id) as total_pesanan, 
	oc.customer_city 
from olist_customers_dataset oc
join olist_orders_dataset od
	on oc.customer_id  = od.customer_id  
group by oc.customer_city 
order by total_pesanan desc 
limit 5;


#4. Berapa total nilai transaksi (nominal uang) yang berputar di masing-masing metode pembayaran, dan metode apa yang paling difavoritkan?
select 
	ROUND(SUM((op.payment_value)), 2) as total_pembayaran,
	op.payment_type
from olist_order_payments_dataset op
group by payment_type 
order by total_pembayaran desc;



# 5. Berapa rata-rata waktu (dalam hari) yang dibutuhkan dari sejak pelanggan menekan tombol beli, sampai barang benar-benar sampai di tangan pelanggan?
select 
	ROUND(AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)), 0) as avg_del_time
from olist_orders_dataset od
where order_status = 'delivered'
	and order_delivered_customer_date != '';


#6. Pada jam berapa pelanggan paling sering melakukan transaksi/menekan tombol beli?
select
	DATE_FORMAT(od.order_purchase_timestamp, '%H') AS waktu_transaksi,
	COUNT(od.order_id) as total_pesanan
from olist_orders_dataset od
group by waktu_transaksi
order by total_pesanan desc;

#7 Tolong cari tahu, dari kota mana saja 5 penjual (seller) kita yang paling aktif? Saya butuh data 5 kota dengan jumlah barang terjual paling banyak!
select 
	osd.seller_city,
	COUNT(oi.seller_id) as total_barang_terjual
from olist_order_items_dataset oi
join olist_sellers_dataset osd
	on oi.seller_id = osd.seller_id
group by osd.seller_city 
order by total_barang_terjual desc
limit 5;
	

#8. Tampilkan sebaran tingkat kepuasan pelanggan! Saya ingin tahu berapa banyak ulasan/pesanan yang mendapatkan bintang 5, bintang 4, bintang 3, bintang 2, dan bintang 1.
select 
	oord.review_score,
	COUNT(oord.review_id) as total_ulasan
from olist_order_reviews_dataset oord
group by oord.review_score 
order by total_ulasan DESC;

#9 Saya tahu Sao Paulo adalah kota dengan pelanggan terbanyak. 
#Tapi saya ingin tahu lebih spesifik: Kategori produk apa yang menghasilkan total pendapatan paling tinggi, 
#KHUSUS dari pelanggan yang tinggal di kota 'sao paulo'? Tampilkan 3 kategori teratas saja
select  
    op.product_category_name, 
    ROUND(SUM(oi.price), 2) AS total_pendapatan
FROM olist_customers_dataset oc
JOIN olist_orders_dataset od 
    ON oc.customer_id = od.customer_id
JOIN olist_order_items_dataset oi 
    ON od.order_id = oi.order_id
JOIN olist_products_dataset op 
    ON oi.product_id = op.product_id
-- Filter khusus warga Sao Paulo
WHERE oc.customer_city = 'sao paulo'
GROUP BY op.product_category_name
ORDER BY total_pendapatan DESC
LIMIT 3;
	
