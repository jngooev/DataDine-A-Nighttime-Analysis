--Find out how many items/order customer usually make at night
Select
orderid,
count(orderid)
From
data_nightly
Group by
orderid

--Find out best seller at night
SELECT
    Rank()OVER (ORDER BY SUM(net_sales) DESC)  AS Rank,
    itemname,
    COUNT(itemname) AS Count,
    SUM(net_sales) AS Net_sales,
    ROUND((SUM(net_sales)::numeric / SUM(SUM(net_sales)::numeric) OVER ()) * 100, 2) || '%' AS Percent_of_Total
FROM
    data_nightly
GROUP BY
    itemname
ORDER BY
    Net_sales DESC;
	
--Find out which category generate most sales at night
SELECT 
	revenue_center,
	SUM(net_sales) as Net_Sales,
	Count(itemname) as count
FROM 
	data_nightly
Group by
	revenue_center
Order by
	SUM(net_sales) DESC
	
-- Find out the frequency of net sales per order
Select
closed_date_time, orderid,
round(cast(sum(net_sales*2) AS numeric))/2 As net_sales_rounded
from data_nightly
Where voided is False

Group by orderid, closed_date_time
Having round(cast(sum(net_sales*2) AS numeric))/2 > 0
order by net_sales_rounded

-----Find best combination----

--Create the ARRAY Order table
Create table "ARRAY_NIGHTLY" AS 
(
  SELECT
    orderid,
    ARRAY_AGG(DISTINCT itemname ORDER BY itemname) AS items
  FROM
    data_nightly
  GROUP BY
    orderid
)

--Create List of all possible combination of 2 as b
Create Table "combination_nightly" as
    (With a AS
    --Create Distinct Items as a
    (SELECT
      distinct(itemname) as item
    FROM
     (Select
	  sum(net_sales), itemname
	  from
	  data_nightly
	  where itemname Not Like '%Combo%'
	  group by itemname
	  order by
	  sum(net_sales) DESC Limit 100
	 ))
  
  SELECT
    a1.item as item1,
    a2.item as item2
  from
    a as a1 cross join
    a as a2
  where 
    a1.item > a2.item
  Order by
    a2.item)

--Join the List of Combination with Orders ARRAY, Count how many orders per combination
SELECT
  b.item1, b.item2,
  COUNT(*) as Orders_count
FROM
  "ARRAY_NIGHTLY" o
JOIN
  "combination_nightly" b ON
  (b.item1 = ANY(o.items) AND b.item2 = ANY(o.items))
GROUP BY
  b.item1, b.item2
ORDER BY
  orders_count DESC;
  
  

	