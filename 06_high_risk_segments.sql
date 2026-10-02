-- Academic Survival SQL Analysis
SELECT CASE WHEN Sem_GPA<2 THEN 'GPA < 2.0' ELSE 'GPA >= 2.0' END gpa_band, CASE WHEN Financial_Stress>=5 THEN 'Stress >= 5' ELSE 'Stress < 5' END stress_band, COUNT(*) records, ROUND(100.0*AVG(Target_Dropout_Next_Sem),2) dropout_rate_pct FROM student_semesters GROUP BY gpa_band,stress_band ORDER BY dropout_rate_pct DESC;
