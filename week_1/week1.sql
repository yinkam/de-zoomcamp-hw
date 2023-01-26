-- Q3
SELECT count(*) from green_taxi_data WHERE TO_CHAR(lpep_pickup_datetime::DATE, 'yyyy-mm-dd') = '2019-01-15';

-- Q4
SELECT lpep_pickup_datetime, MAX(trip_distance) as max_trip FROM green_taxi_data GROUP BY lpep_pickup_datetime ORDER BY max_trip DESC;

-- Q5
SELECT COUNT(*) FROM green_taxi_data WHERE TO_CHAR(lpep_pickup_datetime::DATE, 'yyyy-mm-dd') = '2019-01-01' and passenger_count=2;
SELECT COUNT(*) FROM green_taxi_data WHERE TO_CHAR(lpep_pickup_datetime::DATE, 'yyyy-mm-dd') = '2019-01-01' and passenger_count=3;

-- Q6
SELECT "DOLocationID", max(tip_amount) as max_tip FROM green_taxi_data WHERE "PULocationID"=7 GROUP BY "DOLocationID" ORDER BY max_tip DESC;
