/*Question 1 : Facteurs démographiques & sociaux demographiques*/
select DOB,ADMITTIME,GENDER,ETHNICITY,INSURANCE,MARITAL_STATUS,HOSPITAL_EXPIRE_FLAG 
from patients INNER JOIN admissions ON patients.SUBJECT_ID = admissions.SUBJECT_ID;

/*Question 2 : Gravité et contexte à l'admission*/
select distinct ADMISSION_TYPE,ADMISSION_LOCATION,FIRST_CAREUNIT,DRG_SEVERITY,DRG_MORTALITY,
HOSPITAL_EXPIRE_FLAG,LOS,INTIME from admissions inner join icustays ON admissions.SUBJECT_ID = icustays.SUBJECT_ID 
inner join drgcodes ON drgcodes.SUBJECT_ID = admissions.SUBJECT_ID;

/*Question 3 : Charges & complexité des comorbidités*/
select distinct * from diagnoses_icd;/*requete limité a 1000*/

/*Question 4 : Dynamique clinique précoce*/
SELECT CHARTTIME,STORETIME,CGID,VALUE,VALUENUM,VALUEUOM from chartevents;

/*Question 10 : Valeur pronostique*/

SELECT ROW_ID,SUBJECT_ID,HAMD_ID,FIRST_CAREUNIT,LAST_CAREUNIT,LOS,INTIME,OUTTIME FROM icustays;

/*Question 11 : Role d'intervention*/
