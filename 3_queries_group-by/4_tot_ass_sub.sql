/*

Get the total number of assignment submissions for each cohort.

-Select the cohort name and total submissions.
-Order the results from greatest to least submissions.

//mY SOLN//
SELECT cohorts.name as cohort_name, count(assignment_submissions) AS total_submissions  
FROM cohorts
JOIN total_submissions ON cohorts.id = cohort_id
GROUP BY cohort_name 
ORDER BY total_submissions DESC;
*/

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;