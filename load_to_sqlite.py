import pandas as pd, sqlite3
df=pd.read_csv("data/academic_survival_cleaned.csv")
with sqlite3.connect("academic_survival.db") as con:
    df.to_sql("student_semesters",con,if_exists="replace",index=False)
print(f"Loaded {len(df):,} rows into student_semesters")
