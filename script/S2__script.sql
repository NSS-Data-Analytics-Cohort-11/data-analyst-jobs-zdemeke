--Q11: Find all the job titles that contain the word 'Analyst. How many different job titles are there?
SELECT COUNT (title)
FROM indeed_analyst_jobs
WHERE title LIKE '%Analyst%'
--Answer: 1636
--Q12. How many different job titles do not contain either the word 'Analyst' or the word 'Analytics'? What word do these positions have in common?
SELECT count (title)
FROM indeed_analyst_jobs
WHERE title NOT LIKE '%Analyst%'OR title NOT LIKE '%Analytics%'
__Answer: 1687