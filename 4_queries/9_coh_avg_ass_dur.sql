/*
Cohort Average Assistance Duration

Calculate the average total duration of assistance requests for each cohort.

-Use the previous query as a sub query to determine the duration per cohort.
-Return a single row average_total_duration

my wrong soln -> to create a sub query(nest) is to do it after the SELECT clause using paranthesis


SELECT sum(completed_at - started_at) as average_total_duration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE average_total_duration = AVG(average_total_duration)
ORDER BY average_total_duration;

LHL soln

*/

SELECT avg (total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;