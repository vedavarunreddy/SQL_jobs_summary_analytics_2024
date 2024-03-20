/*
Question: 

- What are the top-paying data analyst roles?
- Identify top 10 highest-paying Data Analyst roles that are 
available remotely.
- Focuses on job postings with specified salaries (remove Nulls)
- Why? highlight the top-paying oppportunities for data analysts
*/

SELECT
    job_id,
    name AS company_name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact AS jobs
LEFT JOIN
    company_dim
ON
    jobs.company_id = company_dim.company_id
-- INNER JOIN
--     skills_dim
-- ON
--     skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    jobs.job_location = 'Anywhere'
    AND
    jobs.salary_year_avg IS NOT NULL
    AND
    jobs.job_title = 'Data Analyst'
ORDER BY
    jobs.salary_year_avg DESC
LIMIT
    10;
