const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'

});

/*
Name of Teachers That Assisted

Run this query using node-postgres.

Create a new file named teachers.js.
Copy the database connection code from students.js.
Use the query from "BootcampX Queries 4" to get all teachers that made an assistance request during a cohort.
Accept the cohort name as input from the user.

Wrong query example

pool.query(`
SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN students ON students.id = student_id 
JOIN teachers ON teachers.id = teacher_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
GROUP BY teachers.name
LIMIT ${process.argv[3] || 5};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}:${user.name}`);
  })
}).catch(err => console.error('query error', err.stack));

LHL soln example 
*/

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2] || 'JUL02'}'
ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});