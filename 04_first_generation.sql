-- Academic Survival SQL Analysis
SELECT First_Generation, COUNT(*) records, ROUND(AVG(Sem_GPA),2) avg_gpa, ROUND(100.0*AVG(Target_Dropout_Next_Sem),2) dropout_rate_pct FROM student_semesters GROUP BY First_Generation;
