# 📊 Olist E-Commerce Business Analytics (End-to-End Data Project)
📌 Deskripsi Proyek
Proyek ini merupakan simulasi end-to-end data analytics menggunakan dataset nyata dari Olist, perusahaan e-commerce raksasa asal Brazil. Tujuan utama dari proyek ini adalah untuk mengekstrak data mentah dari database relasional yang kompleks, mengolahnya menjadi metrik bisnis yang bermakna, dan menyajikannya dalam bentuk dashboard interaktif tingkat eksekutif.

Analisis ini mencakup evaluasi kesehatan finansial (pendapatan & tren pesanan), efisiensi operasional logistik, perilaku konsumen, hingga tingkat kepuasan pelanggan.

🛠️ Tech Stack & Tools
Database Management: MySQL

SQL IDE: DBeaver

Data Visualization & BI: Tableau Public

Teknik Analisis Utama: Multi-table JOIN (hingga 4 tabel), Data Aggregation (SUM, AVG, COUNT), Date/Time Manipulation, dan Database Performance Optimization (INDEXING).

📂 Struktur Dataset
Analisis ini mengekstraksi dan menggabungkan data dari 6 tabel berbeda di dalam skema database Olist:

olist_orders_dataset

olist_order_items_dataset

olist_products_dataset

olist_customers_dataset

olist_sellers_dataset

olist_order_reviews_dataset

🧠 Business Questions & Queries
Proyek ini menjawab 9 pertanyaan bisnis strategis (Kueri SQL lengkap tersedia di file olist_ecommerce_analysis.sql):

Tren Penjualan Bulanan: Bagaimana pergerakan jumlah pesanan dari waktu ke waktu?

Top Kategori Produk: Kategori produk apa yang menghasilkan total pendapatan (R$) tertinggi?

Demografi Pelanggan: Dari kota mana mayoritas pelanggan Olist berasal?

Preferensi Pembayaran: Apa metode pembayaran yang paling sering digunakan oleh pelanggan?

Efisiensi Logistik: Berapa rata-rata waktu (dalam hari) dari pelanggan menekan tombol beli hingga barang tiba?

Analisis Peak Hour: Pada jam berapa pelanggan paling sering melakukan transaksi belanja?

Pusat Distribusi (Seller): 5 kota mana yang menjadi asal seller paling aktif?

Kepuasan Pelanggan: Bagaimana sebaran bintang/rating (1-5) dari keseluruhan pesanan?

Analisis Kohort Spesifik (The Final Boss): Apa 3 kategori produk dengan pendapatan tertinggi khusus dari pembeli yang berdomisili di Sao Paulo? (Melibatkan JOIN 4 Tabel).

🚀 Performance Optimization Highlight
Pada tahap penyelesaian kueri kompleks (Tugas 9) yang menggabungkan 4 tabel dengan ratusan ribu baris data, terjadi anomali beban komputasi yang memakan waktu eksekusi hingga 3 menit (Full Table Scan).
Masalah ini berhasil diatasi dengan mengimplementasikan teknik Database Indexing (CREATE INDEX) pada kolom Foreign Key dan parameter Filter, yang sukses memangkas waktu eksekusi kueri menjadi hitungan detik.

📈 Dashboard & Visualizations
Hasil dari ekstraksi SQL divisualisasikan ke dalam dua dashboard interaktif di Tableau untuk audiens yang berbeda:

Executive Summary: Menampilkan KPI tingkat tinggi (Total Pendapatan, Total Pesanan, Rata-rata Waktu Pengiriman) untuk evaluasi performa bisnis oleh C-Level.

Operational & Behavior: Menganalisis operasional lapangan, distribusi jam sibuk transaksi, dan komparasi asal demografi penjual vs. pembeli.

🔗 Klik di sini untuk melihat Dashboard Interaktif di Tableau Public

💡 Key Business Insights
Logistik: Rata-rata waktu pengiriman barang mencapai 12 hari. Angka ini menjadi baseline bagi tim logistik untuk meningkatkan efisiensi SLA (Service Level Agreement).

Perilaku Konsumen: Aktivitas checkout mulai merangkak naik pada pukul 10:00 dan mencapai puncaknya pada pukul 14:00 - 16:00. Ini adalah golden time untuk menjalankan campaign push-notification atau flash sale.

Dominasi Wilayah: Sao Paulo tidak hanya menjadi pasar pembeli terbesar, tetapi juga pusat seller paling aktif, menjadikannya urat nadi utama ekosistem Olist. Warga Sao Paulo tercatat paling banyak menghabiskan uang untuk kategori Kesehatan & Kecantikan (beleza_saude).

Reputasi: Mayoritas pelanggan sangat puas (mendominasi di Bintang 5 dengan ~44.9k ulasan), namun terdapat peringatan (red flag) pada ~9k pesanan yang mendapat Bintang 1, yang membutuhkan investigasi lebih lanjut terkait kualitas seller atau kendala pengiriman.

Project ini dikembangkan sebagai portofolio Data Analytics.
