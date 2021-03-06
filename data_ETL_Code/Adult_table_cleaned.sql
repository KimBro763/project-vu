SELECT *
FROM adult_access;

CREATE TABLE adult_access AS (
	SELECT 
		"State" AS state,
		"Rank_adult_access_2019" AS rank_adult_access,
		"%_adult_access_2019" AS percent_adult_access,
		"#_adult_access_2019" AS pop_adult_access,
		2019 AS year
	FROM adult_access2019
	UNION
	SELECT
		"State" AS state,
		"Rank_adult_care_access_2020" AS rank_adult_access,
		"%_adult_care_access_2020" AS percent_adult_access,
		"#_adult_care_access_2020" AS pop_adult_access,
		2020 AS year
	FROM adult_access2020
	UNION
	SELECT
		"State" AS state,
		"Rank_adult_access_2021" AS rank_adult_access,
		"%_adult_access_2021" AS percent_adult_access,
		"#_adult_access_2021" AS pop_adult_access,
		2021 AS year
	FROM adult_access_clean2021
);
-----
SELECT *
FROM adult_suicide;

CREATE TABLE adult_suicide AS (
	SELECT
		"State" AS state,
		"Rank_adult_suicide_2019" AS rank_adult_suicide,
		"%_adult_suicide_2019" AS percent_adult_suicide,
		"#_adult_suicide_2019" AS pop_adult_suicide,
		2019 AS year
	FROM adult_suicide_clean2019
	UNION
	SELECT
		"State" AS state,
		"Rank_adult_suicide_2020" AS rank_adult_suicide,
		"%_adult_suicide_2020" AS percent_adult_suicide,
		"#_adult_suicide_2020" AS pop_adult_suicide,
		2020 AS year
	FROM adult_suicide_clean2020
	UNION
	SELECT
		"State" AS state,
		"Rank_adult_suicide_2021" AS rank_adult_suicide,
		"%_adult_suicide_2021" AS percent_adult_suicide,
		"#_adult_suicide_2021" AS pop_adult_suicide,
		2021 AS year
	FROM adult_suicide_clean2021 );
	
-----
SELECT *
FROM adult_uninsured2020;

ALTER TABLE adult_uninsured2020 ALTER COLUMN Rate_adult_uninsured_2020 text;


SELECT *
FROM adult_uninsured2019;

SELECT
	"State" AS state,
	"Rank_adult_uninsured_2019" AS rank_adult_uninsured,
	"%_adult_uninsured_2019" AS percent_adult_uninsured,
	"#_adult_uninsured_2019" AS pop_adult_uninsured,
	2019 AS year
FROM adult_uninsured2019
UNION
SELECT
	"State" AS state,
	"Rank_adult_uninsured_2020" AS rank_adult_uninsured,
	"Rate_adult_uninsured_2020" AS percent_adult_uninsured,
	"#_adult_uninsured_2020" AS pop_adult_uninsured,
	2020 AS year
FROM adult_uninsured2020
UNION
SELECT
	"State" AS state,
	"Rank_adult_uninsured_2021" AS rank_adult_uninsured,
	"Rate_adult_uninsured_2021" AS percent_adult_uninsured,
	"#_adult_uninsured_2021" AS pop_adult_uninsured,
	2021 AS year
FROM adult_uninsured_clean2021

-------

SELECT *
FROM adult_unmet_need_clean2021;

CREATE TABLE adult_unmet_need AS(
	SELECT
		"State" AS state,
		"Rank_adult_unmet_need_2019" AS rank_adult_unmet_need,
		"%_adult_unmet_need_2019" AS percent_adult_unmet_need,
		"#_adult_unmet_need_2019" AS pop_adult_unmet_need,
		2019 AS year
	FROM adult_unmet_needs_clean_2019
	UNION
	SELECT
		"State" AS state,
		"Rank_adult_unmet_needs2020" AS rank_adult_unmet_need,
		"%_adult_unmet_needs2020" AS percent_adult_unmet_need,
		"#_adult_unmet_needs2020" AS pop_adult_unmet_need,
		2020 AS year
	FROM adult_unmet_needs_clean_2020
	UNION
	SELECT
		"State" AS state,
		"Rank_adult_unmet_need_2021" AS rank_adult_unmet_need,
		"%_adult_unmet_need_2021" AS percent_adult_unmet_need,
		"#_adult_unmet_need_2021" AS pop_adult_unmet_need,
		2021 AS year
	FROM adult_unmet_need_clean2021);

SELECT *
FROM adult_unmet_need;

SELECT *
from ami_csv2021;

CREATE TABLE adult_ami as(
	SELECT
		"State" AS state,
		"Rank_ami_2019" AS rank_adult_ami,
		"%_ami_2019" AS percent_adult_ami,
		"#_ami_2019" AS pop_adult_ami,
		2019 AS year
	FROM ami_csv2019
	UNION
	SELECT
		"State" AS state,
		"Rank_adult_ami_2020" AS rank_adult_ami,
		"%_adult_ami_2020" AS percent_adult_ami,
		TRANSLATE("#_adult_ami_2020",',','')::double precision AS pop_adult_ami,
		2020 AS year
	FROM ami_csv2020
	UNION
	SELECT
		"State" AS state,
		"Rank_adult_ami_2021" AS rank_adult_ami,
		"%_adult_ami_2021" AS percent_adult_ami,
		"#_adult_ami_2021" AS pop_adult_ami,
		2021 AS year
	FROM ami_csv2021);
SELECT *
from adult_ami;



drop table if exists adult_master_year;
CREATE TABLE adult_master_year as(
SELECT *
FROM adult_access a
	LEFT JOIN adult_suicide s USING(state,year)
	LEFT JOIN adult_uninsured u USING(state,year)
	LEFT JOIN adult_unmet_need n USING(state,year)
	LEFT JOIN adult_ami i USING(state,year) ); 
	
SELECT year, COUNT(*) AS cnt
FROM adult_master_year
GROUP BY 1;

