-- Show all customer records
SELECT * FROM sales.customers;

-- Show total number of customers
SELECT COUNT(*) FROM sales.customers;

-- Show distrinct product codes that were sold in chennai
SELECT DISTINCT product_code FROM sales.transactions WHERE market_code ='Mark001';

-- Show transactions where currency is US dollars
SELECT * FROM sales.transactions WHERE currency ='USD';

-- Show transactions in 2020 join by date table
SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date 
WHERE sales.date.year=2020;

-- Show total revenue in year 2020, January Month,
SELECT SUM(sales.transactions.sales_amount) AS Sum_of_total_sales_in_january
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date 
WHERE sales.date.year=2020 and sales.date.month_name="January";

-- Show total revenue in year 2020 in Chennai
SELECT SUM(sales.transactions.sales_amount) AS Sum_of_total_sales_in_Chennai
FROM sales.transactions
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year=2020 and sales.transactions.market_code="Mark001";

