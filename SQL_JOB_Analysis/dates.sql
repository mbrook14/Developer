SELECT
    job_title_short as Title,
    job_location as location,
	job_posted_date at time zone 'UTC' at time zone 'EST' as date_time,
    extract(MONTH from job_posted_date) as date_month,
    extract(YEAR from job_posted_date) as date_year

FROM
    job_postings_fact
limit 5

SELECT
    count(job_id) as job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS month
FROM
	job_postings_fact
where
    job_title_short = 'Data Analyst'
group by 
    month
order BY
    job_posted_count DESC;

Create table january_jobs as
    select *
    from job_postings_fact
    where extract(month from job_posted_date) = 1;
    
CREATE TABLE february_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE march_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

CREATE TABLE april_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 4;

CREATE TABLE may_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 5;

CREATE TABLE june_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 6;

CREATE TABLE july_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 7;

CREATE TABLE august_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 8;

CREATE TABLE september_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 9;

CREATE TABLE october_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 10;

CREATE TABLE november_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 11;

CREATE TABLE december_jobs AS
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 12;

select job_posted_date
from february_jobs;

SELECT
    count(job_id) as number_of_jobs,
    CASE
        when job_location = 'Anywhere' then 'Remote'
        when job_location = 'New York, NY' then 'Local'
        else 'Onsite'
    END as location_category
from job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
group by 
    location_category;



--hello//