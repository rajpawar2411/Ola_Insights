create database ola;
use ola;

#1. Retrieve all successful bookings:
CREATE VIEW Successful_Bookings AS
SELECT * FROM bookings WHERE Booking_Status='Success';
select * from Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
Create view Avg_Ride_Distance as
select Vehicle_Type, AVG(Ride_distance) as Average from bookings group by Vehicle_Type;
select * from Avg_Ride_Distance;

#3. Get the total number of cancelled rides by customers:
create view Total_Cancelled_Rides as
select count(Booking_Status) from bookings where Booking_Status='Canceled by Customer';
select * from Total_Cancelled_Rides;

#4. List the top 5 customers who booked the highest number of rides:
create view Top5_Customers as
select Customer_ID, count(Booking_ID) as Total_Rides from bookings group by Customer_ID order by Total_Rides desc limit 5;
select * from Top5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view Rides_Cancelled_By_Drivers as
select count(canceled_Rides_by_Driver) from bookings where canceled_Rides_by_Driver='Personal & Car related issue';
select * from Rides_Cancelled_By_Drivers;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view Max_Min_Driver_Ratings as
select max(Driver_Ratings) as max_ratings, min(Driver_Ratings) as min_ratings from bookings where Vehicle_Type='Prime Sedan'; 
select * from Max_Min_Driver_Ratings;

#7. Retrieve all rides where payment was made using UPI:
create view UPI_Payment as
select * from bookings where Payment_Method='UPI';
select * from UPI_Payment;

#8. Find the average customer rating per vehicle type:
create view Avg_Customer_Rating_Per_Vehicle as
select Vehicle_Type,avg(Customer_Rating) as Avg_Customer_Rating from bookings group by Vehicle_Type;
select * from Avg_Customer_Rating_Per_Vehicle;

#9. Calculate the total booking value of rides completed successfully:
create view Total_Successful_Booking_Value as
select sum(Booking_Value) as Total_Booking_Value from bookings where Booking_Status='Success';
select * from Total_Successful_Booking_Value;

#10. List all incomplete rides along with the reason:
create view Incomplete_Rides as
select Booking_ID,Incomplete_Rides_Reason from bookings where Incomplete_Rides='yes';
select * from Incomplete_Rides;