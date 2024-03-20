/*
Question: 

- What are the top-paying data analyst roles?
- Identify top 10 highest-paying Data Analyst roles that are 
available remotely.
- Focuses on job postings with specified salaries (remove Nulls)
- Why? Highlight the top-paying oppportunities for data analysts
- Also highlight the corresponding skills pertaining to these roles

*/

WITH top_10_DA_jobs_CTE AS (

SELECT
    job_id,
    name AS company_name,
    job_title,
    salary_year_avg
FROM
    job_postings_fact AS jobs
LEFT JOIN
    company_dim
ON
    jobs.company_id = company_dim.company_id
WHERE
    jobs.job_location = 'Anywhere'
    AND
    jobs.salary_year_avg IS NOT NULL
    AND
    jobs.job_title = 'Data Analyst'
ORDER BY
    jobs.salary_year_avg DESC
LIMIT
    10
)

SELECT *
FROM
    top_10_DA_jobs_CTE
INNER JOIN
    skills_job_dim
ON
    top_10_DA_jobs_CTE.job_id = skills_job_dim.job_id
INNER JOIN
    skills_dim
ON
    skills_job_dim.skill_id = skills_dim.skill_id


/*

The provided file contains information on the top 10 paying data analyst roles and associated skills. Here is a summary based on the data:

1. **Company Name: Get It Recruit - Information Technology**
   - **Job Title:** Data Analyst
   - **Salary:** $165,000/year
   - **Skills:** SQL, Python, R, SAS, MATLAB, Pandas, Tableau, Looker

2. **Company Name: Plexus Resource Solutions**
   - **Job Title:** Data Analyst
   - **Salary:** $165,000/year
   - **Skills:** Python, MySQL, AWS

3. **Company Name: Get It Recruit - Healthcare**
   - **Job Title:** Data Analyst
   - **Salary:** $151,500/year
   - **Skills:** SQL, Python, R

4. **Company Name: CyberCoders**
   - **Job Title:** Data Analyst
   - **Salary:** $145,000/year
   - **Skills:** Python, Java, R, JavaScript, C++, Tableau, Power BI, Qlik

5. **Company Name: Level**
   - **Job Title:** Data Analyst
   - **Salary:** $145,000/year
   - **Skills:** SQL, Python, R, Golang, Elasticsearch, AWS, BigQuery, GCP, Pandas, Scikit-learn, Looker, Kubernetes

6. **Company Name: Uber**
   - **Job Title:** Data Analyst
   - **Salary:** $140,500/year
   - **Skills:** SQL, Python, R, Swift, Excel, Tableau

7. **Company Name: Overmind**
   - **Job Title:** Data Analyst
   - **Salary:** $138,500/year
   - **Skills:** SQL, Python

8. **Company Name: EPIC Brokers**
   - **Job Title:** Data Analyst
   - **Salary:** $135,000/year
   - **Skills:** Excel

9. **Company Name: InvestM Technology LLC**
   - **Job Title:** Data Analyst
   - **Salary:** $135,000/year
   - **Skills:** SQL, Excel, Power BI

This summary outlines the top paying data analyst roles along with the corresponding salaries and key skills required for each position.

Citations:
[1] https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/7906649/76a47ee6-e269-4e89-ab2f-5d6ce239503f/top_10_paying_data_analyst_roles_and_skills.csv

*/