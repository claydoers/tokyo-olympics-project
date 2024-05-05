-- Count the number of athletes from each country:
SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

-- Calculate the total medal won by each country:
SELECT 
TeamCountry,
SUM(Gold) AS Total_Gold,
SUM(Silver) AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
GROUP BY TeamCountry
ORDER BY Total_Gold DESC;

-- Calculate the average number of entries by gender for each discipline:
SELECT 
Discipline,
AVG(Female) AS Avg_Female,
AVG(Male) as Avg_Male
FROM entries_gender
GROUP BY Discipline;