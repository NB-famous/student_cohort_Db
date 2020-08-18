/* Get all cohorts with 18 or more students.

-Select the cohort name and the total students.
-Order by total students from smallest to greatest.

SELECT count(*) as student_count
FROM students
JOIN cohorts ON cohorts.name = cohort_name
GROUP BY cohorts.name
HAVING count(*) >= 18;

*/

/* Solution from lighthouse but it doesnt work because .* gives taken as 
an incorrect sytax 


SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;

*/

