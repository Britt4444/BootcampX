SELECT AVG(sum_duration) as average_total_duration
  FROM (
    SELECT SUM(completed_at - started_at) as sum_duration
    FROM assistance_requests JOIN students ON students.id = student_id JOIN cohorts ON cohorts.id = cohort_id
    GROUP BY cohorts.name
    ORDER BY total_duration
  ) as sum_durations;
