##  <img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/0e2bd38f-d981-48d5-9077-e6c83324dd16" width="48" height="48"> COVID-19-Analysis


## Introduction
COVID-19, caused by SARS-CoV-2, is a global pandemic respiratory illness since 2019. It ranges from mild to severe symptoms, affecting all aspects of life. Preventive measures include vaccination, masks, and distancing. Research and collaboration are key in managing its spread.

## Problem Aimed to Solve

This project aims to analyze the COVID-19 pandemic using publicly available data. The project includes a Jupyter notebook with Python code to extract, clean, and visualize COVID-19 data from various sources. Additionally, the project provides a dashboard to explore the data interactively.

##  <img src="https://user-images.githubusercontent.com/106439762/181935629-b3c47bd3-77fb-4431-a11c-ff8ba0942b63.gif" width="48" height="48"> **User's Manual**

| Files/Folder| Description |
| ------------- | ------------- |
| **Dataset Folder** | This folder provides data state wise and district wise data in csv format |
| **Python File** | This contains the .ipynb file of the analysis for Data Extract and Data cleaning.  |
| **MySQL File** | This contains the .sql file for the exploratory data analysis.  |

<br>


<p align="center"><img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/2062e086-46bb-4e1b-b294-f4cbce772f3f" width="400" ></p>      
 
## <img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/6c5b35ff-0901-401f-8b16-0ce62b3c90bf" width="48" height="48" > Methodology



1. Import the data from API using requests library.

    
2. The imported data was in json format hence we used json library to read the data.

<img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/cbf5678d-3e45-4923-8838-391626b537f3" width="1000" >
   
3. We looked for null values and replaced it with zero, looked for duplicates.
    
4. Stated analysing the data by using pandas function like groupby, sort_values etc.
    
5. Used nested 'for' loops to extract the relevant data from the nested dictionary.

<img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/6bf6df93-9422-444e-850b-f463bc1325b5" width="1000" >

6. Extracted the individual state data from dataframe in csv format and imported data into MySQL.
    
7. Aggregated the distribution by month and week wise for each state.
    
8. Imported the aggregated data into Excel for further Analysis.

<br>

##  <img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/1686f0ff-5b6b-4642-b425-167c1867a8d8"  width="48" height="48"> Analysis

   
### o	Highest number of confirmed and deceased cases were seen in Maharashtra.

![img](https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/02603f6d-3ddd-4397-94d2-45e304a78378)

### o	October month had the highest number of total confirmed cases.

<img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/0ba68321-8d24-4483-8336-badb6f21a9fc" width="700" >

### o	Highest Vaccination rate observed in in Sikkim.

<img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/ea7f64b8-123e-478c-b844-771eca397dd9" width="700" >

### o	Lowest Vaccination rate is observed in Uttar Pradesh.
    
### o	Dadra and Nagar Haveli has the highest Recovery Rate.
    
### o	October has the Highest deceased cases.
    
    

##  <img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/06e7e595-80fb-421a-aed6-b6fa2255439c" width="48" height="48"> Dashboard
 <p align="center"><img src="https://github.com/Ankitaaa03/COVID-19-Data-Analysis-India/assets/133629631/60481f88-a09c-4c58-8aed-0016e85892e5" width="1000" ></p>

## Challenges and Learnings

- **JSON Data Extraction:** Navigated nested JSON structures to extract relevant COVID-19 information.
- **Data Cleaning:** Tackled missing values and inconsistencies in COVID-19 data for accurate analysis.
- **Code Optimization:** Improved efficiency in processing and analyzing extensive COVID-19 datasets.
- **Domain Understanding:** Gained insights into public health and epidemiology through COVID-19 data analysis.
- **Collaborative Workflow:** Utilized version control and teamwork for successful project completion.


## <img src="https://user-images.githubusercontent.com/108053296/185796560-b5035cfb-d8e4-4b61-b6fe-e0e75487bd94.gif" width="48" height="48" > Conclusions

1. The analysis focused on the weekly progression of COVID-19 cases, recoveries, deaths, and tests, providing valuable insights into the pandemic's impact across various regions and timeframes.
2. Fluctuations in the number of cases and deaths were observed, underscoring the dynamic nature of the pandemic's effects in different geographical areas.
3. Through effective data visualization using charts and graphs, the project facilitated a clearer understanding of the data, aiding in the interpretation of trends and patterns.
4. The project's findings hold practical significance for public health authorities, enabling them to devise more targeted and efficient strategies for containing the virus's transmission.
5. Policymakers can benefit from the analysis by making informed decisions on resource allocation, directing support to regions experiencing the highest impact from the pandemic.
