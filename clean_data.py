import pandas as pd
df=pd.read_csv("data/academic_survival_longitudinal.csv")
df["Gender"]=df["Gender"].replace({"female":"Female","F":"Female","male":"Male","M":"Male"})
for c in ["Family_Income","LMS_Logins"]:
    df[c+"_Missing"]=df[c].isna().astype(int)
df["Attendance_Outlier"]=((df["Attendance"]<0)|(df["Attendance"]>100)).astype(int)
df["Family_Income"]=df["Family_Income"].fillna(df["Family_Income"].median())
df["LMS_Logins"]=df["LMS_Logins"].fillna(df["LMS_Logins"].median())
df["Attendance"]=df["Attendance"].clip(0,100)
df.to_csv("data/academic_survival_cleaned.csv",index=False)
