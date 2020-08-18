/*
Total Student Assistance Requests

Get the total number of assistance_requests for a student.

-Select the student's name and the total assistance requests.
-Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.

LHL soln

SELECT count(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;


My soln
*/

SELECT  count(*) as total_assistances ,students.name as name
FROM assistance_requests
JOIN students ON student_id = students.id 
WHERE students.name = 'Elliot Dickinson' 
GROUP BY students.name;

