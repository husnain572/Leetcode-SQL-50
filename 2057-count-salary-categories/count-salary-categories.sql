WITH cat AS (
    SELECT 
        income,
        CASE
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            WHEN income > 50000 THEN 'High Salary'
            ELSE '0'
        END AS category
    FROM Accounts
)
SELECT categories.category, COUNT(cat.category) AS accounts_count 
FROM (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
) AS categories
LEFT JOIN cat USING (category)
GROUP BY categories.category;
