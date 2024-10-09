# Horizon Health Medical Center Efficiency Report
A comprehensive Power BI report built for Horizon Health Medical Center using data obtained from an MSSQL database. The report covers key operational areas such as patient admissions, visits, financial performance, and overall conclusions. SQL scripts used for data extraction and transformation are also included




### Project Overview
This project focuses on building a comprehensive Power BI report using data extracted from an MSSQL database for Horizon Health Medical Center. The primary goal was to analyze key operational areas and provide actionable insights for decision-makers.

The project covers the following key areas:

1. Patient Admissions and Visits: Analyzing the distribution and trends of outpatient visits vs admissions, highlighting that the facility primarily operates as an outpatient care center. 

2. Financial Performance: Visualizing revenue by department and identifying key contributors such as Pathology, Nephrology, and Orthopedics.
 
3. Departmental Efficiency: Using visualizations to pinpoint high-traffic departments and suggest operational improvements for optimizing patient flow and resource allocation.

4. Conclusions and Recommendations: Providing stakeholders with data-driven recommendations to improve outpatient services, diagnostic efficiency, and patient care.

In this project, I connected directly to the MSSQL database to query the relevant tables and extracted the required data as CSV files. It was a one-off project focused on data between March and November 2023 and i did not see the need to connect directly to the database from PowerBI as no further analysis for other dates were required. 

The project leverages various Power BI features, such as interactive charts, drill-down capabilities, and slicers, to offer a dynamic and user-friendly experience


### Process:

Data Extraction:
		I Connected to the MSSQL database to query the relevant tables and extract the required data.
		The data was then exported as CSV files for further analysis.

  I Extracted three key tables from the MSSQL database: Visits, Patient Admissions, and Patient Details & Charges by Services and Department.
	I then Exported the data as CSV files for further analysis.

![POP 01](https://github.com/user-attachments/assets/27ce24b9-6df7-4474-afc9-d9dd8707fec6)

![POP1](https://github.com/user-attachments/assets/3d892860-0044-4c4f-bf8a-99056f995f30)



### Data Cleansing
The CSV files were imported into Power Query for data transformation and a Date Table was created using power query M code through the advanced editor to enhance the reporting capabilities. I added a day Number Column to ensure that i could sort the day column (which i created using DAX) in the right order when creating slicers.
 Corrected data types across the tables to maintain consistency and accuracy for analysis.
		
  <img width="690" alt="Screenshot 2024-10-09 at 14 04 58" src="https://github.com/user-attachments/assets/28c0487a-5386-4285-b2b7-a525c2db8638">


 ### Data Importation
 Once the data was cleansed, it was imported into Power BI for visualization and report creation. I then added the necessary columns to the Date Table, these included the Year, Month Num, Month Name, Month short and a Day Name. I created the appropriate relationships between the imported tables to the date table to set up the data model within Power BI. 
 <img width="787" alt="Screenshot 2024-10-09 at 14 02 23" src="https://github.com/user-attachments/assets/9098dc00-170d-4d8a-91a0-0202f9a2d4db">

 
 ### Visualization and Reporting
 I created a report focused on patient Visits, Admission and finances from the data and also included recommendations to the stake holders. 
 The  Interactive report can be viewed here: [Horizon Health Medical Center Efficiency Report](https://app.powerbi.com/view?r=eyJrIjoiNDY2NGQ4M2ItYWUwYi00NDNhLTk0OTYtZTRhYjViNTliMDRmIiwidCI6ImNlMGY1MjRmLTY3NWMtNDZmMy04NTYyLWQ4N2U1NDk2MWNhZSJ9&pageName=5f6e58afcc90d72d3a6a)

 ### Findings and Recommendations
 1. High Volume of Outpatient Visits:
 The volume of Visits (92%) to Admissions(8%) reveals thats the Hospital functions primarily as an outpatient care facility.
 2. The pathology department is a key department in terms of patient volume and revenue generation.
 3. Mornings are the busiest, ensuring sufficient staffing in high-traffic departments (Pathology, Dental, Cardiology, and ENT) during these hours is essential
