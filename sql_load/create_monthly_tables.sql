-- Create table for January job postings
CREATE TABLE IF NOT EXISTS january_jobs_table AS
    -- Select all columns from job_postings_fact table where job_posted_date is in January
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

-- Create table for February job postings
CREATE TABLE IF NOT EXISTS february_jobs_table AS
    -- Select all columns from job_postings_fact table where job_posted_date is in February
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

-- Create table for March job postings
CREATE TABLE IF NOT EXISTS march_jobs_table AS
    -- Select all columns from job_postings_fact table where job_posted_date is in March
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;
