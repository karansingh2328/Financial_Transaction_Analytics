select *
from transaction_data
limit 10;

select 
min(transaction_datetime),
max(transaction_datetime)
from transaction_data;

select distinct 
	   customer_name, 
	   merchant_name, 
	   merchant_category,
	   customer_city,
	   customer_state
from transaction_data
limit 10;

select customer_gender,
count(*) as total_customer
from transaction_data
group by customer_gender;

select customer_age_group,
count(*) as total_customer
from transaction_data
group by customer_age_group
order by total_customer desc;

select 
min(transaction_amount) as minimum_amount,
max(transaction_amount) as maximum_amount,
round((avg(transaction_amount)::numeric),2) as avg_amount,
round((sum(transaction_amount)::numeric),2) as total_amount
from transaction_data;

SELECT
transaction_year,
COUNT(*) AS total_transactions
FROM transaction_data
GROUP BY transaction_year
ORDER BY transaction_year;

SELECT
transaction_month_name,
COUNT(*) AS total_transactions
FROM transaction_data
GROUP BY transaction_month_name
ORDER BY MIN(transaction_month);

SELECT
weekend,
COUNT(*) AS total_transactions
FROM transaction_data
GROUP BY weekend;

SELECT
time_of_day,
COUNT(*) AS total_transactions
FROM transaction_data
GROUP BY time_of_day
ORDER BY total_transactions DESC;

SELECT
merchant_category,
COUNT(*) AS total_transactions
FROM transaction_data
GROUP BY merchant_category
ORDER BY total_transactions DESC;

select 
merchant_name,
count(*) as total_transaction
from transaction_data
group by merchant_name
order by total_transaction desc
limit 10;

SELECT
customer_city,
COUNT(*) AS total_transactions
FROM transaction_data
GROUP BY customer_city
ORDER BY total_transactions DESC
LIMIT 10;

SELECT
customer_state,
COUNT(*) AS total_transactions
FROM transaction_data
GROUP BY customer_state
ORDER BY total_transactions DESC;

SELECT
fraud_flag,
COUNT(*) AS total_transactions,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM transaction_data),2) AS percentage
FROM transaction_data
GROUP BY fraud_flag;

SELECT
COUNT(*) AS total_rows,
COUNT(transaction_id) AS transaction_id,
COUNT(customer_name) AS customer_name,
COUNT(transaction_amount) AS transaction_amount,
COUNT(merchant_name) AS merchant_name,
COUNT(fraud_flag) AS fraud_flag
FROM transaction_data;
