-- Switch to the 'covid19' database
use covid19;

-- Select all columns from the 'district_dataframe' table
select * from district_dataframe;

-- Common Table Expression (CTE) 'cte1' to calculate test ratio and categorize districts
with cte1 as (
    -- Select columns and calculate the test ratio for districts with valid test and population data
    select district_code, tested, deceased, population_m, (tested/population_m) as test_ratio
    from district_dataframe 
    where tested <> 0 and population_m <> 0
)
-- Select columns from 'cte1' and categorize test ratios into different categories
select *,
    case 
        when  test_ratio > 0  and test_ratio <= 0.1 then 'Category A'
        when  test_ratio > 0.1 and test_ratio <= 0.3 then 'Category B'
        when  test_ratio > 0.3 and test_ratio <= 0.5 then 'Category C'
        when  test_ratio > 0.5 and test_ratio <= 0.75 then  'Category D'
        else 'Category E'
    end as Category
-- Filter out records with test_ratio less than 1
from cte1 
where test_ratio < 1
-- Order the results by district_code
order by district_code;

-- Create a Common Table Expression (CTE) named 'cte' to calculate vaccination rates
with cte as (
    -- Select columns and calculate vaccination rates for districts with valid data
    select district_code, confirmed_d7, population_m, (vaccinated1_d7 + vaccinated2_d7) as Vaccinated
    from district_dataframe 
    -- Filter out districts with specific conditions
    having confirmed_d7 > 0 and Vaccinated > 0 and population_m > 0
)
-- Select all columns from the CTE 'cte' and calculate vaccination rate percentage
select *,
    Vaccinated / population_m * 100 as Vaccination_rate
-- Retrieve data from the CTE 'cte'
from cte;


-- Create a Common Table Expression (CTE) named 'cte' to calculate vaccination rates
with cte as (
    -- Select columns and filter data for districts meeting specific conditions
    select district_code, confirmed_d7, population_m, vaccinated2_d7
    from district_dataframe 
    -- Apply HAVING clause to filter districts with certain conditions
    having confirmed_d7 > 0 and vaccinated2_d7 > 0 and population_m > 0
)
-- Select all columns from the CTE 'cte' and calculate vaccination rate percentage
select *,
    vaccinated2_d7 / population_m * 100 as Vaccination_rate
-- Retrieve data from the CTE 'cte'
from cte;


with cte as (select district_code, confirmed_d7 , population_m ,(vaccinated1_d7 + vaccinated2_d7) as Vaccinated 
from district_dataframe having confirmed_d7 > 0  and Vaccinated > 0 and population_m>0) 
select *, Vaccinated/ population_m * 100 as Vaccinaion_rate from cte 

with cte as (select district_code, confirmed_d7 , population_m , vaccinated2_d7
from district_dataframe having confirmed_d7 > 0  and Vaccinated2_d7 > 0 and population_m>0) 
select *, vaccinated2_d7/ population_m * 100 as Vaccinaion_rate from cte 

select * from karnataka order by dates;


