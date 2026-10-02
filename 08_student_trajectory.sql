-- Academic Survival SQL Analysis
SELECT Student_ID, COUNT(*) semesters_observed, MIN(Semester) first_semester, MAX(Semester) last_semester, ROUND(AVG(Sem_GPA),2) avg_gpa, ROUND(AVG(Financial_Stress),2) avg_stress, MAX(Target_Dropout_Next_Sem) ever_dropout_event FROM student_semesters GROUP BY Student_ID ORDER BY ever_dropout_event DESC, avg_gpa ASC;
