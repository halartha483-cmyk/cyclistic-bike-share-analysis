/*
=========================================================
Cyclistic Bike-Share Analysis
Author: Halartha
Tools: Google BigQuery (SQL)
Project: Google Data Analytics Capstone
=========================================================

Business Question:
How do annual members and casual riders use Cyclistic bikes differently?

Dataset:
Cyclistic historical bike-share trips

=========================================================
SECTION 1 — DATA PREPARATION
=========================================================
*/

-- Create cleaned analytical table

CREATE OR REPLACE TABLE
`my-coursera-project-1-482107.cyclistic_capstone.cyclistic_cleaned` AS

SELECT
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    end_station_name,
    member_casual,

    TIMESTAMP_DIFF(
        ended_at,
        started_at,
        MINUTE
    ) AS ride_length_minutes,

    FORMAT_DATE('%A', DATE(started_at)) AS day_of_week,

    FORMAT_DATE('%B', DATE(started_at)) AS ride_month

FROM
`my-coursera-project-1-482107.cyclistic_capstone.cyclistic_combined`

WHERE

TIMESTAMP_DIFF(
ended_at,
started_at,
MINUTE
) > 0

AND start_station_name IS NOT NULL
AND end_station_name IS NOT NULL
AND member_casual IS NOT NULL;



/*
=========================================================
SECTION 2 — RIDER TYPE COMPARISON
=========================================================
*/

SELECT
member_casual,
ROUND(AVG(ride_length_minutes),2) AS avg_ride_minutes,
COUNT(*) AS total_rides

FROM
`my-coursera-project-1-482107.cyclistic_capstone.cyclistic_cleaned`

GROUP BY member_casual;



/*
=========================================================
SECTION 3 — DAY OF WEEK ANALYSIS
=========================================================
*/

SELECT

member_casual,

day_of_week,

COUNT(*) AS total_rides,

ROUND(AVG(ride_length_minutes),2)
AS avg_ride_minutes

FROM
`my-coursera-project-1-482107.cyclistic_capstone.cyclistic_cleaned`

GROUP BY

member_casual,

day_of_week

ORDER BY

member_casual,

total_rides DESC;



/*
=========================================================
SECTION 4 — BIKE TYPE ANALYSIS
=========================================================
*/

SELECT

member_casual,

rideable_type,

COUNT(*) AS total_rides,

ROUND(AVG(ride_length_minutes),2)
AS avg_ride_minutes

FROM
`my-coursera-project-1-482107.cyclistic_capstone.cyclistic_cleaned`

GROUP BY

member_casual,

rideable_type

ORDER BY

member_casual,

total_rides DESC;



/*
=========================================================
SECTION 5 — MONTHLY TREND ANALYSIS
=========================================================
*/

SELECT

member_casual,

ride_month,

COUNT(*) AS total_rides,

ROUND(AVG(ride_length_minutes),2)
AS avg_ride_minutes

FROM
`my-coursera-project-1-482107.cyclistic_capstone.cyclistic_cleaned`

GROUP BY

member_casual,

ride_month

ORDER BY

member_casual,

total_rides DESC;



/*
=========================================================
END OF PROJECT

Key Findings

• Members completed approximately 322,234 rides.
• Casual riders completed approximately 98,415 rides.
• Members averaged 9.98 minutes per ride.
• Casual riders averaged 16.80 minutes per ride.
• Casual riders peaked on Fridays and Saturdays.
• Members rode consistently throughout weekdays.
• Ride activity increased from January through March.

=========================================================
*/
