-- Creating a query to get the data week wise for each state

-- Select data from the 'andamannicobar' table and structure the results
SELECT 
    'Andaman & Nicobar' AS STATE,  -- Set a constant value for the 'STATE' column
    MONTHNAME(dates) AS MONTHS,    -- Extract the month name from the 'dates' column as 'MONTHS'
    CASE 
        -- Use a CASE statement to categorize days of the month into weeks
        WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
        WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week_2'
        WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
        WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
        ELSE 'Week_5'
    END AS Weeks,                    -- Assign the categorized weeks as 'Weeks'
    MAX(confirmed)  AS TOTAL_CONFIRMED,   -- Calculate the maximum 'confirmed' value as 'TOTAL_CONFIRMED'
    MAX(recovered) AS TOTAL_RECOVERED,    -- Calculate the maximum 'recovered' value as 'TOTAL_RECOVERED'
    MAX(tested) AS TOTAL_TESTED,          -- Calculate the maximum 'tested' value as 'TOTAL_TESTED'
    MAX(deceased) AS TOTAL_DECEASED       -- Calculate the maximum 'deceased' value as 'TOTAL_DECEASED'
FROM andamannicobar                       -- Select data from the 'andamannicobar' table
GROUP BY MONTHS, Weeks                    -- Group the results by 'MONTHS' and 'Weeks'
ORDER BY TOTAL_DECEASED DESC;  

-- andrapradesh

-- Select data from the 'andrapradesh' table and structure the results
SELECT 
    'Andhra Pradesh' AS STATE,         -- Set a constant value for the 'STATE' column
    MONTHNAME(dates) AS MONTHS,        -- Extract the month name from the 'dates' column as 'MONTHS'
    CASE 
        -- Use a CASE statement to categorize days of the month into weeks
        WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
        WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week_2'
        WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
        WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
        ELSE 'Week_5'
    END AS Weeks,                        -- Assign the categorized weeks as 'Weeks'
    MAX(confirmed)  AS TOTAL_CONFIRMED,   -- Calculate the maximum 'confirmed' value as 'TOTAL_CONFIRMED'
    MAX(recovered) AS TOTAL_RECOVERED,    -- Calculate the maximum 'recovered' value as 'TOTAL_RECOVERED'
    MAX(tested) AS TOTAL_TESTED,          -- Calculate the maximum 'tested' value as 'TOTAL_TESTED'
    MAX(deceased) AS TOTAL_DECEASED       -- Calculate the maximum 'deceased' value as 'TOTAL_DECEASED'
FROM andrapradesh                         -- Select data from the 'andrapradesh' table
GROUP BY MONTHS, Weeks                    -- Group the results by 'MONTHS' and 'Weeks'
ORDER BY TOTAL_DECEASED DESC;              -- Order the results in descending order of 'TOTAL_DECEASED'

      
--   arunanchal

SELECT 
      'Arunachal Pradesh' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks,
      MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM arunanchal
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
-- assam
SELECT 
      'Assam' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM assam
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
-- bihar


SELECT 
      'Bihar' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM bihar
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- chandigarh



SELECT 
      'Chandigarh' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM chandigarh
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
      
-- CHATTISGARH




SELECT 
      'Chattisgarh' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM chattisgarh
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
-- dadranagar




SELECT 
      'Dadra and Nagar Haveli' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM dadranagar
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


	
-- delhi


SELECT 
      'Delhi' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM delhi
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- goa



SELECT 
      'Goa' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM goa
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;

-- gujrat



SELECT 
      'Gujrat' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM gujrat
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
-- haryana 



SELECT 
      'Haryana' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM haryana
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;



-- J&K



SELECT 
      'Jammu & Kashmir' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM jammukashmir
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
      
-- jharkhand



SELECT 
      'Jharkhand' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM jharkhand
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
      
-- karnataka


SELECT 
      'Karnataka' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM karnataka
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


--  kerala



SELECT 
      'Kerala' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM kerela
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
-- ladakh



SELECT 
      'Ladakh' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM ladakh
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- lakshdweep



SELECT 
      'Lakshadweep' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM lakshadweep
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
-- madhyapradesh


SELECT 
      'Madhya Pradesh' AS STATE,MONTHNAME(dates) AS MONTHS,CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM madhyapradesh
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;

 
 -- maharashtra
 
 

SELECT 
      'Maharashtra' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM maharashtra
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- manipur



SELECT 
      'Manipur' AS STATE,MONTHNAME(dates) AS MONTHS,CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM manipur
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- meghalaya



SELECT 
      'Meghalaya' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM meghalaya
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- mizoram 



SELECT 
      'Mizoram' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM mizoram
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
      
-- nagaland 


SELECT 
      'Nagaland' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM nagaland
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
      
-- orissa



SELECT 
      'Orissa' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM orissa
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;

-- punducherry



SELECT 
      'Puducherry' AS STATE,MONTHNAME(dates) AS MONTHS,CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM puducherry
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;

 
 -- punjab 
 
 
SELECT 
      'Punjab' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM punjab
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- rajasthan



SELECT 
      'Rajasthan' AS STATE,MONTHNAME(dates) AS MONTHS,CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM rajasthan
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
      
      
-- sikkim



SELECT 
      'Sikkim' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM sikkim
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- tamilnadu


SELECT 
      'Tamil Nadu' AS STATE,MONTHNAME(dates) AS MONTHS,CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM tamilnadu
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
-- telangana



SELECT 
      'Telangana' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM telangana
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- uttarpradesh



SELECT 
      'Uttar Pradesh' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM uttarpradesh
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- uttarakhand



SELECT 
      'Uttrakhand' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM uttrakhand
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;


-- westbengal



SELECT 
      'West Bengal' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM westbengal
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC;
      
     SELECT 
      'Himachal Pradesh' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM himanchalpradesh
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC; 
      
       SELECT 
      'Tripura' AS STATE,MONTHNAME(dates) AS MONTHS, CASE 
      WHEN DAY(dates) BETWEEN 1 AND 7 THEN 'Week_1'
      WHEN DAY(dates) BETWEEN 8 AND 14 THEN 'Week2'
      WHEN DAY(dates) BETWEEN 15 AND 21 THEN 'Week_3'
      WHEN DAY(dates) BETWEEN 22 AND 28 THEN 'Week_4'
      ELSE 'Week_5' END AS Weeks, MAX(confirmed)  AS TOTAL_CONFIRMED,
      MAX(recovered) AS TOTAL_RECOVERED, MAX(tested) AS TOTAL_TESTED,
      MAX(deceased) AS TOTAL_DECEASED
      FROM tripura
      GROUP BY MONTHS, Weeks
      ORDER BY TOTAL_DECEASED DESC; 