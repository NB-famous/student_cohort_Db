/*

Average Assistance Request Wait Time

Calculate the average time it takes to start an assistance request.

Return just a single column here.

same as LHL soln
*/

SELECT avg(started_at - created_at ) as average_wait_time
FROM assistance_requests; 
