/* query to find average salary for both yearly and 
hourly for jobs posted after June 1st, 2023
grouping by job schedule type */

SELECT 
    -- jobs.job_posted_date as date_posted,
    AVG(jobs.salary_year_avg) as yearly_avg_salary,
    AVG(jobs.salary_hour_avg) as hourly_avg_salary,
    jobs.job_schedule_type
FROM
    job_postings_fact as jobs
WHERE 
    EXTRACT(MONTH FROM job_posted_date) >= 6
    and
    EXTRACT(YEAR FROM job_posted_date) >= 2023
GROUP BY
    jobs.job_schedule_type;

-- select * from job_postings_fact; adsjlaksd