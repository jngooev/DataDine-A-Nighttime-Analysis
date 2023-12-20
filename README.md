# DataDine-A-Nighttime-Analysis at Fastfood restaurant X.
After conducting initial analyses, it has come to our attention that nighttime sales pose a significant challenge for Fastfood Restaurant X. Our investigation has pinpointed the hours between 23:00 and 6:00 as particularly problematic, as these were identified in preliminary analyses as the weakest periods for sales, contributing to an overall decline in revenue and impacting profitability. This comprehensive analysis transforms raw data into actionable insights, offering strategic guidance to the restaurant chain for making informed decisions to maximize sales during nighttime hours.  
**It is imperative to emphasize that all final figures in this report are fabricated and altered to safeguard privacy**.
## 1. Data Structure: Column Names and Data Types  
**After undergoing a preliminary cleaning process, the data table, named 'clean_data' now consists of 19 columns and 608,226 rows.**
closed_date_time: timestamp - The date and time order is closed  
employee_name: text - Employee who took the order  
item _id: integer  
item_name: text  
item_plu: text  
price: money  
discount_total: money  
promotion_total: money  
taxes: money  
net_sales: money  
gross_sales: money  
total_sales: money  
revenue_center: text - The Category of item  
has_employee_discount: boolean  
destination: text - The source of order  
voided: boolean  
has_customer: boolean  
is_modifier:boolean  
orderid: bigint  
![image](https://github.com/jngooev/DataDine-A-Nighttime-Analysis/assets/131409825/02aa0c2b-1b8a-4e2c-9f00-e179fcb36c2f)  
## 2. Uncover Insights into Nightly Sales  
### 2.1 Items per order  
![image](https://github.com/jngooev/DataDine-A-Nighttime-Analysis/assets/131409825/35373d7b-f7f3-4b7a-b5f7-5bf27d0835b4)
### 2.2 Best Seller at night  
By item:  
![image](https://github.com/jngooev/DataDine-A-Nighttime-Analysis/assets/131409825/20b44612-125b-4e4e-b8c2-90185b7dac64)  
By category:  
It is noteworthy that the two categories, Asian Sandwiches and Lee's Cafe Cup, collectively contribute to more than 61% of net sales during nighttime hours.  
![image](https://github.com/jngooev/DataDine-A-Nighttime-Analysis/assets/131409825/97237fdc-96cd-41b3-94df-4ef7ad81a4cd)  
![image](https://github.com/jngooev/DataDine-A-Nighttime-Analysis/assets/131409825/0711af02-c789-4621-8743-4c3ed6d5f0b1)  
### 2.3 Net_sales per order
A significant portion, 50%, of orders falls below the $7 threshold, with the most frequent net sales per order observed within the range of $3 to $3.5. By strategically targeting and engaging customers within this segment, characterized by orders under $7, and implementing measures to encourage increased spending, there is potential to enhance overall sales performance.  
![image](https://github.com/jngooev/DataDine-A-Nighttime-Analysis/assets/131409825/3f92668f-f28c-458b-a575-c5c6e7a7c501)  







