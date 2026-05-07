# 📊 Olist E-Commerce Business Analytics (End-to-End Data Project)
📌 Project Description
This project is an end-to-end data analytics simulation using a real-world dataset from Olist, a giant Brazilian e-commerce company. The main objective of this project is to extract raw data from a complex relational database, transform it into meaningful business metrics, and present it in an executive-level interactive dashboard.

The analysis covers financial health evaluation (revenue & order trends), logistics operational efficiency, consumer behavior, and customer satisfaction levels.

## 🛠️ Tech Stack & Tools
Database Management: MySQL

SQL IDE: DBeaver

Data Visualization & BI: Tableau Public

Core Analytical Techniques: Multi-table JOIN (up to 4 tables), Data Aggregation (SUM, AVG, COUNT), Date/Time Manipulation, and Database Performance Optimization (INDEXING).

## 📂 Dataset Structure
This analysis extracts and joins data from 6 different tables within the Olist database schema:

- olist_orders_dataset
- olist_order_items_dataset
- olist_products_dataset
- olist_customers_dataset
- olist_sellers_dataset
- olist_order_reviews_dataset

## 🧠 Business Questions & Queries
This project answers 9 strategic business questions (Full SQL queries are available in the olist_ecommerce_analysis.sql file):

1. Monthly Sales Trend: How does the order volume move over time?
2. Top Product Categories: Which product categories generate the highest total revenue?
3. Customer Demographics: Which cities do the majority of Olist customers come from?
4. Payment Preferences: What is the most frequently used payment method by customers?
5. Logistics Efficiency: What is the average time (in days) from when a customer clicks the buy button until the goods arrive?
6. Peak Hour Analysis: At what times do customers most frequently make purchases?
7. Distribution Centers (Sellers): Which 5 cities are the origins of the most active sellers?
8. Customer Satisfaction: What is the distribution of star ratings (1-5) across all orders?
9. Specific Cohort Analysis (The Final Boss): What are the top 3 product categories with the highest revenue specifically from buyers residing in Sao Paulo? (Involves joining 4 tables).

## 🚀 Performance Optimization Highlight
During the execution of a complex query (Task 9) joining 4 tables with hundreds of thousands of rows, a heavy computational load anomaly occurred, taking up to 3 minutes to execute (Full Table Scan).
This issue was successfully resolved by implementing Database Indexing (CREATE INDEX) techniques on Foreign Key columns and Filter parameters, drastically cutting down the execution time to mere seconds.

## 📈 Dashboard & Visualizations
The results from the SQL extraction were visualized into two interactive dashboards in Tableau tailored for different audiences:

Executive Summary: Displays high-level KPIs (Total Revenue, Total Orders, Average Delivery Time) for C-Level business performance evaluation.

Operational & Behavior: Analyzes field operations, transaction peak hour distributions, and compares seller vs. buyer demographics.

🔗 [Click here to view the Interactive Dashboard on Tableau Public](https://public.tableau.com/app/profile/angelo.dusu4226/viz/OlistEcommerceVizualisationProject/Dashboard2)

## 💡 Key Business Insights
Logistics: The average delivery time reaches 12 days. This figure serves as a baseline for the logistics team to improve SLA (Service Level Agreement) efficiency.

Consumer Behavior: Checkout activity starts climbing at 10:00 AM and peaks between 2:00 PM - 4:00 PM (14:00 - 16:00). This is the golden time to run push-notification campaigns or flash sales.

Regional Dominance: Sao Paulo is not only the largest buyer market but also the most active seller hub, making it the main artery of the Olist ecosystem. Citizens of Sao Paulo spend the most on the Health & Beauty (beleza_saude) category.

Reputation: The majority of customers are highly satisfied (dominated by 5 Stars with ~44.9k reviews), but there is a red flag on ~9k orders receiving 1 Star, which requires further investigation regarding seller quality or delivery issues.

This project was developed as a Data Analytics portfolio.
