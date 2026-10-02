-- Academic Survival SQL Analysis
SELECT Scholarship, COUNT(*) records, ROUND(AVG(Family_Income),2) avg_income, ROUND(AVG(Financial_Stress),2) avg_stress, ROUND(100.0*AVG(Target_Dropout_Next_Sem),2) dropout_rate_pct FROM student_semesters GROUP BY Scholarship;
