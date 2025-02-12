COPY company_dim
FROM 'C:\Developer\csv_files\company_dim.csv'
DELIMITER ',' CSV Header;

COPY skills_dim
FROM 'C:\Developer\csv_files\skills_dim.csv'
DELIMITER ',' CSV Header;

COPY job_postings_fact
FROM 'C:\Developer\csv_files\job_postings_fact.csv'
DELIMITER ',' CSV Header;

COPY skills_job_dim
FROM 'C:\Developer\csv_files\skills_job_dim.csv'
DELIMITER ',' CSV Header;


select *
from job_postings_fact
limit 100;
