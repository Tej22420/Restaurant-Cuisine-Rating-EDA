-- Creating a database
CREATE DATABASE cuisine_rating;

USE cuisine_rating;

Select * from Customerdata;

-- 1. Describe the dataset cuisine_rating?
Select * from Customerdata;

-- 2. What is the total number of records in the dataset?
SELECT COUNT(*) FROM Customerdata;

-- 3. What is the distribution of cuisine ratings across the dataset?
SELECT AVG(`Food Rating`) AS AvgRating, COUNT(*) AS Count
FROM Customerdata;

-- 4. How does cuisine rating vary by location?
SELECT Location, AVG(`Food Rating`) AS AvgRating
FROM Customerdata
GROUP BY Location;

-- 3. Is there a significant difference in cuisine ratings between genders?
SELECT Gender, AVG(`Food Rating`) AS AvgRating
FROM Customerdata
GROUP BY Gender;

-- 4. Does marital status affect cuisine ratings?
SELECT `Marital Status`, AVG(`Food Rating`) AS AvgRating
FROM Customerdata
GROUP BY `Marital Status`;

-- 6. What is the relationship between cuisine rating and budget for customers?
SELECT Budget, AVG(`Food Rating`) AS AvgRating
FROM customerdata
GROUP BY Budget;

-- 7. Which cuisines receive the highest and lowest ratings on average?
SELECT Cuisines, AVG(`Food Rating`) AS AvgRating
FROM Customerdata
GROUP BY Cuisines
ORDER BY AvgRating DESC;
 
-- 8. Does the availability of alcohol in a restaurant impact cuisine ratings?
SELECT Drinks, AVG(`Food Rating`) AS AvgRating
FROM Customerdata
GROUP BY Drinks;

-- 9. Is there a difference in cuisine ratings between smokers and non-smokers?
SELECT Smoker, AVG(`Food Rating`) AS AvgRating
FROM Customerdata
GROUP BY Smoker;

-- 10. How do customers' activity levels relate to cuisine ratings?
SELECT Activity, AVG(`Food Rating`) AS AvgRating
FROM Customerdata
GROUP BY Activity;

-- 11. Is there a relationship between service ratings and cuisine ratings?
SELECT AVG(`Service Rating`) AS AvgServiceRating, AVG(`Food Rating`) AS AvgFoodRating
FROM Customerdata;

-- 12. What is the distribution of customers by gender, age, and marital status? Are there any noticeable trends in customer demographics over time?
SELECT Gender, AVG(YOB) AS Avg_Age, `Marital Status`, COUNT(*) AS Count
FROM Customerdata
GROUP BY Gender, `Marital Status`;

-- 13. Which cuisines are most popular among customers? 
SELECT Cuisines, COUNT(*) AS Count
FROM Customerdata
GROUP BY Cuisines
ORDER BY Count DESC;

-- 14. How do budget and cuisine preferences vary across different customer groups (e.g., age, marital status)?
SELECT YOB, `Marital Status`, AVG(Budget) AS Avg_Budget, Cuisines, COUNT(*) AS Count
FROM Customerdata
GROUP BY YOB, `Marital Status`, Cuisines;

-- 15. How often do customers visit the restaurant (Often A S), and does this correlate with their budget or rating behavior? Is there a relationship between the presence of alcohol in restaurants and customer behavior or ratings?
SELECT `Often A S`, AVG(Budget) AS Avg_Budget, AVG(`Food Rating`) AS Avg_Food_Rating, AVG(`Service Rating`) AS Avg_Service_Rating
FROM Customerdata
GROUP BY `Often A S`;

-- 16. Is there a relationship between the presence of alcohol (drinks) in restaurants and customer behavior or ratings?
SELECT Drinks, AVG(Budget) AS Avg_Budget, AVG(`Food Rating`) AS Avg_Food_Rating, AVG(`Service Rating`) AS Avg_Service_Rating
FROM Customerdata
GROUP BY Drinks;

-- 17. How do food ratings and service ratings correlate with overall customer satisfaction? 
SELECT `Food Rating`, `Service Rating`, AVG(`Overall Rating`) AS Avg_Overall_Rating
FROM Customerdata
GROUP BY `Food Rating`, `Service Rating`;

-- 18. Do certain locations consistently receive higher ratings for cuisine or service? 
SELECT Location, AVG(`Food Rating`) AS Avg_Food_Rating, AVG(`Service Rating`) AS Avg_Service_Rating
FROM Customerdata
GROUP BY Location;

-- 19. Is there a correlation between food ratings and service ratings?
SELECT `Food Rating`, `Service Rating`, COUNT(*) AS Count
FROM Customerdata
GROUP BY `Food Rating`, `Service Rating`;

-- 20. Do certain customer segments (e.g., age, gender) correlate with higher overall satisfaction ratings?
SELECT YOB, Gender, `Marital Status`, AVG(`Overall Rating`) AS Avg_Overall_Rating
FROM Customerdata
GROUP BY YOB, Gender, `Marital Status`;

-- 21. Which factors (e.g., food, service, budget) most strongly contribute to overall customer satisfaction?
SELECT `Food Rating`, `Service Rating`, Budget, AVG(`Overall Rating`) AS Avg_Overall_Rating
FROM Customerdata
GROUP BY `Food Rating`, `Service Rating`, Budget;

-- 22. What are the predominant professions and activities of customers visiting the restaurant? 
SELECT Activity, `Marital Status`, COUNT(*) AS Count
FROM Customerdata
GROUP BY Activity, `Marital Status`;

-- 24. How does the smoking behavior of customers (e.g., often, socially) influence their ratings and dining frequency?
SELECT Smoker, `Often A S`, AVG(Budget) AS Avg_Budget, COUNT(*) AS Count
FROM Customerdata
GROUP BY Smoker, `Often A S`;
























