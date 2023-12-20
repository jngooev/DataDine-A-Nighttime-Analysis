# DataDine-A-Nighttime-Analysis at Fastfood restaurant X.
After conducting initial analyses, it has come to our attention that nighttime sales pose a significant challenge for Fastfood Restaurant X. Our investigation has pinpointed the hours between 23:00 and 6:00 as particularly problematic, as these were identified in preliminary analyses as the weakest periods for sales, contributing to an overall decline in revenue and impacting profitability. This comprehensive analysis transforms raw data into actionable insights, offering strategic guidance to the restaurant chain for making informed decisions to maximize sales during nighttime hours. It is imperative to emphasize that all final figures in this report are fabricated and altered to safeguard privacy.
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
By item  
![image](https://github.com/jngooev/DataDine-A-Nighttime-Analysis/assets/131409825/20b44612-125b-4e4e-b8c2-90185b7dac64)  
By category  
![image](https://github.com/jngooev/DataDine-A-Nighttime-Analysis/assets/131409825/97237fdc-96cd-41b3-94df-4ef7ad81a4cd)  
![image](https://github.com/jngooev/DataDine-A-Nighttime-Analysis/assets/131409825/b6f70838-41f5-4498-8d70-19e1396a566b)  




