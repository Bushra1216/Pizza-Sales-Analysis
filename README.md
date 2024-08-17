# Comprehensive Pizza Sales Data Analysis



### Project Overview
This project aims to analyze key performance indicators (KPIs) for pizza sales data and create comprehensive data visualizations to uncover insights into a year's sales performance.By examining various aspects of the sales data,we seek to identify patterns and opportunities for improvement.



### Data Source
This project provides a detailed analysis of pizza sales data through various visualizations, enabling stakeholders to gain valuable insights into sales trends, customer preferences, and performance metrics.The primary dataset used for this analysis is the [pizza_sales.csv](https://drive.google.com/file/d/1IdSvxXmciaZJ9RrSOrjO0bZPlQPKJaKT/view?usp=sharing) containing detailed information about one year sales.



### Tools
- Excel - Data Cleaning
- Microsoft SQL Server - Data Analysis
- Power BI - Data Visualization and Report Creating


### Data Cleaning
To prepare data before analysis, performed these followings-

1. **Data Loading and Inspection**
   - Load the sales data from the source.
   - Inspect the data to understand its structure and content.

2. **Handling Duplicate Values**
   - Identify and remove duplicate entries in the dataset.
   - Ensure data consistency and accuracy.

3. **Replace Values**
   - Handle missing or incorrect values by replacing them with appropriate substitutes.
   - Standardize data entries for consistency.

4. **Trim Column Data**
   - Trim whitespace from column data to ensure uniformity.
   - Clean up any extraneous spaces or characters.

5. **Data Cleaning and Formatting**
   - Format the data columns to the appropriate data types.
   - Ensure the dataset is clean and ready for analysis.



### Analysis and Visualization
To gain insights business performance, have analyzed the key indicators for pizza sales data. Specifically, the following metrices: <br>
1. Total revenue <br>
2. Average order value <br>
3. Total pizzas sold <br>
4. Total orders <br>
5. Average pizza per order <br>

Include some code features worked with

``` sql

use [Pizza Sales Database];

select * from pizza_sales;

--avg pizza per order
select CAST(CAST(SUM(quantity) AS DECIMAL(10,2))/CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) 
AS DECIMAL(10,2)) AS average_pizza_perOrder from pizza_sales;


-- top 5 best pizza sold 
select pizza_name , sum(quantity) as total_sold from pizza_sales group by pizza_name
order by total_sold desc offset 0 rows fetch next 5 rows only;

--total pizza sold by pizza category
select pizza_category , sum(quantity) as total_sold from pizza_sales group by pizza_category;

```



for Visualization
  - To display the daily trend of total orders over a specific period, used stacked column chart on the dashboard to identify patterns in order volumes on a daily basis.
  - Create a ribbon chart to display the hourly trend of total orders on the dashboard.
  - Use a donut chart to show the percentage of sales across different pizza categories.
  - Create a ribbon chart to display the hourly trend of total orders on the dashboard.
  - Displays the percentage distribution of sales by pizza size, helping to understand customer preferences for different pizza sizes, for the visualization a pie chart is used.
  - Create a ribbon chart to display the hourly trend of total orders on the dashboard.
  - Presents the total number of pizzas sold by each category, the funnel providing a clear comparison of category performance.
  -  Highlights the top 5 best-selling pizzas and lowest selling pizzas, showcasing the choices among customers through bar chart.



### Limitations
While this analysis provides valuable insights into pizza sales trends and performance, but there are some limitations to consider:


   - Data cleaning and preprocessing steps were undertaken to ensure accuracy, but some errors or inconsistencies may still exist.


   - The analysis covers one year of sales data. Seasonal variations and longer-term trends beyond this period are not captured.


   - External factors influencing sales, such as marketing campaigns, promotions, or external events, are not accounted for in this analysis.


 
 ### Conclusion

This project provides a detailed analysis of pizza sales data through various visualizations, enabling stakeholders to gain valuable insights into sales trends, customer preferences, and performance metrics. The findings from this analysis will support strategic decision-making and drive business growth.

Feel free to explore this. If you have any questions or suggestions, please open an issue or reach out to [shanjidabushra@gmail.com](shanjidabushra@gmail.com)





