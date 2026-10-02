-- Academic Survival SQL Analysis
SELECT COUNT(*) semester_records, COUNT(DISTINCT Student_ID) students, ROUND(100.0*AVG(Target_Dropout_Next_Sem),2) dropout_event_rate_pct FROM student_semesters;
