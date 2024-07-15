use [Pizza Sales Database];

--KPI analyze

select * from pizza_sales;

select SUM(total_price) AS Total_Revenue from pizza_sales;

SELECT SUM(total_price)/COUNT(DISTINCT order_id) AS Average_order_value FROM pizza_sales;

SELECT SUM(quantity) AS total_pizza_sold FROM pizza_sales;

select CAST(CAST(SUM(quantity) AS DECIMAL(10,2))/CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) 
AS DECIMAL(10,2)) AS average_pizza_perOrder from pizza_sales;

SELECT COUNT(DISTINCT order_id) from pizza_sales;

--daily trend
select DATENAME(weekday,order_date) as OrderDAY, COUNT(DISTINCT order_id) as orders 
from pizza_sales group by DATENAME(weekday,order_date);

--hourly trend
select DATEPART(HOUR,order_time) as order_hours , COUNT(DISTINCT order_id) as orders from pizza_sales 
group by DATEPART(HOUR,order_time) order by DATEPART(HOUR,order_time);

--percentage of sales by pizza category
select DISTINCT pizza_category ,
sum(total_price) AS salesBy_pzCatgry,
CAST((sum(total_price)*100/(select sum(total_price) from pizza_sales WHERE 
MONTH(order_date) = 1 )) AS DECIMAL(10,3)) AS Percentg_ofSales
from pizza_sales WHERE MONTH(order_date) = 1  
group by pizza_category;




--percentage of sales by pizza size
select DISTINCT pizza_size ,
sum(total_price) AS salesBy_pzCatgry,
CAST((sum(total_price)*100/(select sum(total_price) from pizza_sales WHERE DATEPART(QUARTER,order_date) = 1)) AS DECIMAL(10,3))
AS Percentg_ofSales from pizza_sales WHERE DATEPART(QUARTER,order_date) = 1 group by pizza_size;



-- top 5 best pizza sold 
select pizza_name , sum(quantity) as total_sold from pizza_sales group by pizza_name
order by total_sold desc offset 0 rows fetch next 5 rows only;

-- bottom 5 wrost pizZa sold
select pizza_name , sum(quantity) as total_sold from pizza_sales group by pizza_name
order by total_sold asc offset 0 rows fetch next 5 rows only;


--total pizza sold by pizza category
select pizza_category , sum(quantity) as total_sold from pizza_sales group by pizza_category;

select pizza_name, LEN(pizza_name) from pizza_sales;



