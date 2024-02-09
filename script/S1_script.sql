--Q1. How many rows are in the data/indeed_analyst_jobs table?
SELECT COUNT(*)
FROM indeed_analyst_jobs
-- Answer: 1793
--Q2. Write a query to look the first 10 rows, what company is ib 10th row
SELECT *
FROM indeed_analyst_jobs
LIMIT 10;
--Answer: ExxonMoblil
--Q3. how many posting in TN? How many in TN or Kentucky?
SELECT COUNT(location)
FROM indeed_analyst_jobs
WHERE location= 'TN'
--Answer: 21

SELECT COUNT (location)
FROM indeed_analyst_jobs
WHERE location IN ('TN','KY')
-- Answer: 27
--Q4.How many postings in TN have a star rating above 4?
SELECT COUNT (location)
FROM indeed_analyst_jobs
WHERE location = 'TN' AND star_rating > 4;
-- Answer: 3
--Q5. How many posting in the data set have a review count between 500 and 1000?
SELECT COUNT(review_count)
FROM indeed_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--Answer: 151
--Q6.Show the average star rating for companies in each state. Which state shows the highest average rating?
SELECT location,AVG(star_rating)
FROM indeed_analyst_jobs
GROUP BY location
ORDER BY AVG (star_rating) DESC
--Answer: NE
--Q7. Select unique job titles from the indeed_analyst_jobs. How many are there?
SELECT DISTINCT COUNT (title)
FROM indeed_analyst_jobs;
--Answer: 1793
--Q8. How many unique job titles are there for california companies?
SELECT DISTINCT COUNT (title)
FROM indeed_analyst_jobs
WHERE location = 'CA';
--Answer: 376
--Q9. Find the name of each company and its average star rating for all companies that have more that 5000 reviews across all locations. How many companies are there with more than 5000 reviews across all locations?
SELECT company, AVG(star_rating)
FROM indeed_analyst_jobs
WHERE review_count > 5000
GROUP BY company
--count ?
--Q10. Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all location in the datat set has the highest star rating?What is that rating?
SELECT company, AVG(star_rating)
FROM indeed_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY AVG (star_rating) DESC;
--Answer: General motors- 4.199999809

