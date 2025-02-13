
# Ola Insights

# Problem Statement
Identify the reason and the trend for ride cancellation

# Steps Followed
- Step 1: Get data from the internet in CSV form which includes many columns related to the ride cancellation.
- Step 2: Clean the data in Excel
Check null values where I found some values so I drop those null values. Then, modify some column names and change their data type.
- Step 3: Perform SQL Queries
Load the clean data into SQL Workbench and perform some queries to get data accuracy, efficient performance, and pre-aggregation. SQL Questions are,
1. Retrieve all successful bookings:
2. Find the average ride distance for each vehicle type:
3. Get the total number of cancelled rides by customers:
4. List the top 5 customers who booked the highest number of rides:
5. Get the number of rides cancelled by drivers due to personal and car-related issues:
6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
7. Retrieve all rides where payment was made using UPI:
8. Find the average customer rating per vehicle type:
9. Calculate the total booking value of rides completed successfully:
10. List all incomplete rides along with the reason:
For every query, I have viewed so only by executing the view query it will show the result.

- Step 4: Then load data into Power BI Desktop, the dataset is a CSV file Open the power query editor & in the view tab under the Data Preview section, check the "column distribution", "column quality" & "column profile" options.
- Step 5: After loading and saving I added ppt pages for better visualization and inserted buttons in place of those options i.e. overall, vehicle type, revenue, cancellation, and Ratings. 
- Step 6: Then first set all those five pages and linked by buttons.
- Step 7: After successful page linking add graphs and columns for visualization based on these questions,
1. Ride Volume Over Time
Line Graph: Date column on X & count of Booking_ID on Y 
2. Booking Status Breakdown
Pie Chart  count of Booking_Status
3. Top 5 Vehicle Types by Ride Distance
Card : Booking_Values(SUM,Average),Success Bookings(Filter on Booking_Values),Ride_Distance(SUM) for every Vehicle. 
4. Average Customer Ratings by Vehicle Type
Card : Customer_Ratings(Average) for every Vehicle
5. Cancelled rides Reasons
Pie Chart: For customer and Driver
6. Revenue by Payment Method
Bar Graph : Payment_Method on X & Booking_Value(SUM) on Y
7. Top 5 Customers by Total Booking Value
Table : Customer_ID,Booking_Value(SUM) & apply filter on Customer_ID(Top 5)
8. Ride Distance Distribution Per Day
Bar graph : Date on X & Ride_Distance(SUM) on Y
9. Driver Ratings Distribution
Same as Customer Ratings
10. Customer vs. Driver Ratings
Two tables include both driver rating and customer rating

# Insights
- 2024
Total Bookings: 20407
Success Bookings  12652
cancelled Bookings: 5735
The highest rating is given by the customer: Mini (4.02/5)
The lowest rating given by customer  E-bike(3.98/5)
Revenue by Payment Method: Cash(3.90M)
Highest Booking : July(723)
