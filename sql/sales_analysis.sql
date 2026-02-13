CREATE TABLE sales_data (
    row_id INTEGER,
    order_id TEXT,
    order_date TEXT,
    ship_date TEXT,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC
);

--Total number of rows/records
select count(*) as total_rows from sales_data;

--To find type of data
select * from sales_data limit 10;

--To find datatype of each column
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'sales_data';

-- Sales by Region
SELECT region,SUM(sales) AS total_sales
FROM information_schema.sales_data
GROUP BY region ORDER BY total_sales DESC;

-- Monthly Sales Trend
SELECT TO_CHAR(order_date, 'YYYY-MM') AS month,SUM(sales) AS total_sales
FROM information_schema.sales_data
GROUP BY month ORDER BY month;
