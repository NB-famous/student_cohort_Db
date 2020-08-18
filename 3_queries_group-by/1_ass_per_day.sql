/* 
Get the total number of assignments for each day of bootcamp.
-Select the day and the total assignments.
-Order the results by day.
-This query only requires the assignments table.


//MY SOL//

SELECT assignments.day, count(assignments) as total_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day ASC;

/// lighthouse sol//
*/

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;