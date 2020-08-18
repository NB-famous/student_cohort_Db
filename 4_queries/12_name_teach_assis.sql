/*
Name of Teachers That Assisted

Get the name of all teachers that performed an assistance request during a cohort.

Select the instructor's name and the cohort's name.
Don't repeat the instructor's name in the results list.
Order by the instructor's name.
This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.

Provided solution is a good alternative to LHL soln

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN cohorts ON  cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;

*/

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;