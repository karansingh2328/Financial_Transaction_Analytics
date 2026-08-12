-- Which customers spend the most?

select customer_name,
round((sum(transaction_amount)::numeric),2) as highest_spend
from transaction_data
group by customer_name
order by highest_spend desc
limit 1;

-- Which customer age groups spend the most?

select customer_age_group,
round((sum(transaction_amount)::numeric),2) as highest_spend
from transaction_data
group by customer_age_group
order by highest_spend desc
limit 1;

-- Which cities generate the highest customer spending?

select customer_city,
round((sum(transaction_amount)::numeric),2) as highest_spending
from transaction_data
group by customer_city
order by highest_spending desc 
limit 1;

-- At what time of day do customers spend the most?

select time_of_day,
round((sum(transaction_amount)::numeric),2) as highest_spending_time
from transaction_data 
group by time_of_day
order by highest_spending_time desc
limit 1;

-- Which merchant categories generate the highest transaction value?

select merchant_category,
round((sum(transaction_amount)::numeric),2) as highest_transaction
from transaction_data 
group by merchant_category
order by highest_transaction desc
limit 1;

-- Do customers spend more on weekdays or weekends?

select weekend,
round((sum(transaction_amount)::numeric),2) as highest_spending
from transaction_data 
group by weekend
order by highest_spending desc
limit 1;

-- Which customers make transactions most frequently?

select customer_name,
count(transaction_datetime) as transaction_count
from transaction_data 
group by customer_name
order by transaction_count desc
limit 1;

-- Which cities have the highest transaction frequency?

select customer_city,
count(transaction_datetime) as transaction_count
from transaction_data
group by customer_city
order by transaction_count desc
limit 1;

-- Which merchant categories have the highest transaction frequency?

select merchant_category,
count(transaction_datetime) as transaction_count
from transaction_data
group by merchant_Category
order by transaction_count desc
limit 1;

-- Which age groups make transactions most frequently?

select customer_age_group,
count(transaction_datetime) as transaction_count
from transaction_data
group by customer_age_group
order by transaction_count desc
limit 1;

-- Which cities have the highest average transaction amount?

select customer_city,
round((avg(transaction_amount)::numeric),2) as avg_transaction_amount
from transaction_data
group by customer_city
order by avg_transaction_amount desc
limit 1;

-- Which merchants have the highest fraud rate?

select merchant_name,
count(*) as total_transaction,
sum(case when fraud_flag = 'True' then 1 else 0 end) as fraud_transaction,
round((sum(case when fraud_flag = 'True' then 1 else 0 end)::numeric / count(*))*100,2) as fraud_rate
from transaction_data
group by merchant_name
having count(*) > 10
order by fraud_rate desc
limit 10;

-- Which states generate the highest total transaction value?

select customer_state,
round((sum(transaction_amount)::numeric),2) as total_transaction_value
from transaction_data
group by customer_state
order by total_transaction_value desc
limit 10;

-- Which age groups show suspicious transaction patterns?

select customer_age_group,
count(*) as total_transaction,
sum(case when fraud_flag = 'True' then 1 else 0 end) as fraud_transaction,
round((sum(case when fraud_flag = 'True' then 1 else 0 end)::numeric / count(*))*100,2) as fraud_rate
from transaction_data
group by customer_age_group
order by fraud_rate desc;

-- Which cities show higher suspicious transaction activity?

select customer_city,
count(*) as total_transaction,
sum(case when fraud_flag = 'True' then 1 else 0 end) as fraud_transaction,
round((sum(case when fraud_flag = 'True' then 1 else 0 end)::numeric/ count(*))*100,2) as fraud_rate
from transaction_data
group by customer_city
HAVING COUNT(*) >= 100
order by fraud_rate desc
limit 10;

-- Which merchant categories have a higher fraud risk?

select merchant_category,
count(*) as total_transaction,
sum(case when fraud_flag = 'True' then 1 else 0 end) as fraud_transaction,
round((sum(case when fraud_flag = 'True' then 1 else 0 end)::numeric / count(*))*100,2) as fraud_rate
from transaction_data
group by merchant_category
having count(*) > 10
order by fraud_rate desc
limit 10;

-- When does suspicious activity occur more often—weekdays or weekends?

select weekend,
count(*) as total_transaction,
sum(case when fraud_flag = 'True' then 1 else 0 end) as fraud_transaction,
round((sum(case when fraud_flag = 'True' then 1 else 0 end)::numeric/count(*))*100,2) as fraud_rate
from transaction_data
group by weekend
order by fraud_rate desc;

-- Rank the top 10 customers by total spending. 

with sales_comparison as(
select customer_name,
	   sum(transaction_amount) as total_spending
from transaction_data
group by customer_name
),
rank_comparison as (
select customer_name,
	   total_spending,
	   dense_rank() over( order by total_spending desc) as customer_rank
from sales_comparison
)
select customer_name,
	   round(((total_spending)::numeric),2) as total_spending,
	   customer_rank
from rank_comparison
where customer_rank <= 10
order by customer_rank;

-- Rank customers by spending within each state. 

with sales_comparison as (
select customer_name,
	   customer_state,
	   sum(transaction_amount) as total_spending
from transaction_data
group by customer_name,
	     customer_state
),
rank_comparison as(
select customer_name,
	   customer_state,
	   total_spending,
	   dense_rank() over(partition by customer_state order by total_spending desc) as customer_rank
from sales_comparison
)
select customer_name,
	   customer_state,
	   round(((total_spending)::numeric),2) as total_spending,
	   customer_rank
from rank_comparison
where customer_rank <=3
order by customer_state , customer_rank;

-- Which cities show the highest month-over-month spending growth? 

with sales_comparison as (
select customer_city,
        transaction_year,
        transaction_month,
        SUM(transaction_amount) as total_spending
from transaction_data
group by customer_city,
         transaction_year,
         transaction_month
),

month_comparison as (
select  customer_city,
        transaction_year,
        transaction_month,
        total_spending,
        lag(total_spending) over (partition by  customer_city order by transaction_year, transaction_month) as previous_month_spending
FROM sales_comparison
)
select customer_city,
       transaction_year,
       transaction_month,
       round(total_spending::numeric, 2) as total_spending,
       round(previous_month_spending::numeric, 2) as previous_month_spending,
       round((total_spending - previous_month_spending)::numeric, 2) as spending_growth
from month_comparison
where previous_month_spending is not null
order by spending_growth desc
limit 10;

-- Which merchant categories contribute the highest percentage of total revenue? 

select merchant_category,
	   round((sum(transaction_amount)::numeric),2) as total_revenue,
	   round((sum(transaction_amount) * 100.0 / sum(sum(transaction_amount)) over ())::numeric,2) as revenue_percentage
from transaction_data
group by merchant_category
order by revenue_percentage desc
limit 10;

-- Which customers have total spending above the average customer spending?

with customer_spending as(
select customer_name,
	   sum(transaction_amount) as total_spending
from transaction_data
group by customer_name
),
avg_spending as (
select avg(total_spending) as avg_customer_spending
from customer_spending
)
select customer_name,
	   round(total_spending::numeric,2) as total_spending
from customer_spending
where total_spending > (select avg_customer_spending
from avg_spending )
order by total_spending desc
limit 10;

-- What is the cumulative transaction amount over time? 

with monthly_sales as (
select transaction_year,
	   transaction_month,
	   sum(transaction_amount) as monthly_transaction_amount
from transaction_data
group by transaction_year,
 	     transaction_month
)
select transaction_year,
	   transaction_month,
	   round(monthly_transaction_amount::numeric ,2 ) as monthly_transaction_amount,
	   round(sum(monthly_transaction_amount)over (order by transaction_year,transaction_month)::numeric,2)
	   as cumulative_transaction_amount
from monthly_sales
order by transaction_year,
	     transaction_month;

-- Which hour has the highest fraud rate? 

select transaction_hour,
	   count(*) as total_transactions,
	   count(*) filter (where fraud_flag = True) as fraud_transaction,
	   round((count(*) filter (where fraud_flag = 	True)::numeric/count(*))*100,2) as fraud_rate_percentage
from transaction_data
group by transaction_hour
order by fraud_rate_percentage desc;

-- Which cities consistently rank in the top 5 by spending each year?

with city_year_spending as(
select transaction_year,
	   customer_city,
	   sum(transaction_amount) as total_spending
from transaction_data
group by transaction_year, customer_city
),
city_rank as(
select transaction_year,
	   customer_city,
	   total_spending,
	   row_number ()over(partition by transaction_year order by total_spending desc) as spending_rank
from city_year_spending
)
select customer_city,
	   count(*) as year_in_top_5
from city_rank
where spending_rank <=5
group by customer_city 
having count(*) = (select count (distinct transaction_year)
from transaction_data)
order by year_in_top_5 desc;
	   



