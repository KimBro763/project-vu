Machine learning Model data source: ml_cleaned_df.csv

This data base includes data from
1. Data_1: https://www.cdc.gov/nchs/nhis/2020nhis.htm :
The target population for the NHIS is the civilian noninstitutionalized population residing within 
the 50 states and the District of Columbia at the time of the interview.the sample is expected to yield 30,000 sample adult completed interviews. 

2. Data_2: https://www.mhanational.org/
This sources has provided mental health workforce availability by states. 
The term “mental health provider” includes psychiatrists, psychologists,
licensed clinical social workers, counselors, marriage and family
therapists, and advanced practice nurses specializing in mental health
care.

Data Table ansame

Column: RACEALL_A means: race group that each sample belongs
1	 White Only
2	Black/African American only
3	AIAN only 
4	Asian Only
5	NHPI only 
6	Other only 
7	White and Black/African American
8	White and AIAN
9	White and Asian
10	White and Other
11	ll other combinations
97	Refused
98	Not Ascertained
99	Don't know

Column: SEX_A_20 means Sex of Sample Adult Code Description

1	Male
2	Female
7	Refused	
8	Not Ascertained	
9	Don't know

Column: MAXEDUC_A_20 Highest level of education of Sample

00             	Never attended/kindergarten only
01  	        Grade 1-11 
02             	12th grade, no diploma
03             	GED or equivalent
04             High School Graduate	
05             Some college, no degree	
06             Associate degree: occupational, technical, or vocational program	
07             Associate degree: academic program	
08             Bachelor's degree (Example: BA, AB, BS, BBA)	
09             Master's degree (Example: MA, MS, MEng, MEd, MBA)	
10             Professional School degree (Example: MD, DDS, DVM, JD)	
11             Doctoral degree (Example: PhD, EdD)	
97             Refused 		
98             Not Ascertained	
99             Don't Know 	

Column Region: Regions of United States

1	 Northeast
2	 Midwest
3	 South
4	 West


Column MHTHND_A Needed counseling/therapy but did not get it due to cost, past 12m
1	yes
2	No

Column: Region_df
Mental health provider availability by region (state data aggregated)