# Academic Survival Longitudinal Analysis — Python & SQL

A portfolio project analyzing **79,239 semester-level observations from 20,000 students** across eight semesters to explore academic, financial, and engagement patterns associated with dropout events.

![Dropout trend](images/dropout_rate_by_semester.png)

## Business / Research Questions
1. How does the dropout-event rate change across semesters?
2. Which academic and engagement indicators differ most between event and non-event records?
3. How are work hours and financial stress associated with dropout events?
4. How do outcomes vary by first-generation and scholarship status?
5. Which descriptive student segments show elevated dropout-event rates?
6. How can SQL support longitudinal student-level monitoring?

## Data Quality & Cleaning
The raw dataset has 22 fields and no fully duplicated rows. The cleaning workflow:
- standardizes gender labels (`F`/`female` → `Female`; `M`/`male` → `Male`);
- median-imputes **3,604** missing `Family_Income` values and **867** missing `LMS_Logins` values;
- preserves missingness indicator columns;
- flags **249** attendance values outside 0–100 and clips them to the valid range.

## Key Findings
- Overall dropout-event rate: **8.73%** (6,917 rows).
- Dropout-event records average **2.35 GPA** vs **2.72** for non-event records.
- They average **21.3 work hours** vs **16.5**, and **3.87 financial stress** vs **2.45**.
- Average failed courses are **1.20** for event records vs **0.60** otherwise.
- First-generation records have a **11.80%** dropout-event rate vs **7.23%** for non-first-generation records.
- Scholarship records have a **6.24%** rate vs **9.68%** without scholarships.
- The combined segment **GPA < 2.0 + financial stress ≥ 5** has a descriptive event rate of **46.33%**, compared with **6.20%** for **GPA ≥ 2.0 + stress < 5**.
- Work-hour bands rise from **5.05%** for `<10` hours to **14.59%** for `30+` hours.

![Risk indicators](images/risk_indicator_comparison.png)

## SQL Analysis
Eight validated SQLite-compatible queries are included:
- dataset overview;
- dropout rate by semester;
- academic/engagement risk profile;
- first-generation outcomes;
- scholarship outcomes;
- high-risk descriptive segments;
- work-hour bands;
- student-level longitudinal trajectories.

## Repository Structure
```text
academic-survival-python-sql-analysis/
├── data/
│   └── academic_survival_cleaned.csv
├── images/
│   ├── dropout_by_income_quartile.png
│   ├── dropout_rate_by_semester.png
│   ├── gpa_distribution.png
│   └── risk_indicator_comparison.png
├── notebooks/
│   └── academic_survival_analysis.ipynb
├── reports/
│   ├── dropout_group_comparison.csv
│   ├── key_metrics.csv
│   ├── semester_summary.csv
│   └── target_correlations.csv
├── scripts/
│   ├── clean_data.py
│   └── load_to_sqlite.py
├── sql/
│   └── 01_overview.sql ... 08_student_trajectory.sql
├── requirements.txt
├── LICENSE
└── README.md
```

## How to Run
```bash
pip install -r requirements.txt
python scripts/clean_data.py
python scripts/load_to_sqlite.py
jupyter notebook notebooks/academic_survival_analysis.ipynb
```

## Tools
**Python:** pandas, NumPy, Matplotlib, Jupyter  
**SQL:** SQLite-compatible SQL

## Interpretation
This is an observational analysis. The findings show **associations**, not causal effects. A production early-warning system would require careful temporal validation, leakage checks, fairness analysis, and institutional review before operational use.
