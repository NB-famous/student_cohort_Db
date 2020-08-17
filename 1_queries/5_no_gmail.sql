SELECT name, email, id, cohort_id
FROM students
WHERE LOWER(email) NOT LIKE '%gmail.com%' 
AND phone is NULL; 
