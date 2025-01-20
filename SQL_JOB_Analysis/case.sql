
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
    location_category
ORDER BY    
    number_of_jobs DESC;