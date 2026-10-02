-- Academic Survival SQL Analysis
SELECT Semester, COUNT(*) records, SUM(Target_Dropout_Next_Sem) dropout_events, ROUND(100.0*AVG(Target_Dropout_Next_Sem),2) dropout_rate_pct FROM student_semesters GROUP BY Semester ORDER BY Semester;
