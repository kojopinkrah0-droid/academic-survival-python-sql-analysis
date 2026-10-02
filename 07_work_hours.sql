-- Academic Survival SQL Analysis
SELECT CASE WHEN Work_Hours<10 THEN '<10' WHEN Work_Hours<20 THEN '10-19.9' WHEN Work_Hours<30 THEN '20-29.9' ELSE '30+' END work_hours_band, COUNT(*) records, ROUND(AVG(Sem_GPA),2) avg_gpa, ROUND(100.0*AVG(Target_Dropout_Next_Sem),2) dropout_rate_pct FROM student_semesters GROUP BY work_hours_band ORDER BY dropout_rate_pct;
