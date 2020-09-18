CREATE SCHEMA yuran;
GRANT ALL ON SCHEMA yuran TO schools5;

CREATE TABLE yuran.acs_data (

		GEO_ID VARCHAR NOT NULL,
 		Population INT,
 		state INT NOT NULL, 
 		county INT NOT NULL,
 		tract INT NOT NULL,
 		block_group INT NOT NULL,
 		White_alone INT,
 		Black_or_African_American_alone INT, 
 		American_Indian_and_Alaska_Native_alone INT,
 		Asian_alone INT,
 		Native_Hawaiian_and_Other_Pacific_Islander_alone INT,
		Some_other_race_alone INT,
	    Per_capita_income DECIMAL,
 		Associate_degree INT,
		Bachelor_degree INT,
 		Master_degree INT,
 		Professional_school_degree INT,
 		Doctorate_degree INT,
 		Male INT,
 		Female INT,
 		Median_age DECIMAL,
 		Male median_age DECIMAL,
		Female_median_age DECIMAL
);

\COPY yuran.acs_data from 'acs_data.csv' WITH CSV HEADER;