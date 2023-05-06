SELECT sum(assignment_submissions.duration) as total_duration
  FROM  students JOIN assignment_submissions ON student_id = students.id JOIN cohorts ON cohorts.id = students.cohort_id
 WHERE students.cohort_id = 'FEB12';