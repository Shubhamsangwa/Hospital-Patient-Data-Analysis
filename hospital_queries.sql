CREATE TABLE IF NOT EXISTS patients (
    patient_id INTEGER PRIMARY KEY,
    age INTEGER, gender TEXT, disease TEXT,
    doctor TEXT, treatment_cost REAL
);

INSERT INTO patients VALUES (1,45,'Male','Diabetes','Dr Shah',5000);
INSERT INTO patients VALUES (2,30,'Female','Fever','Dr Patil',2000);
INSERT INTO patients VALUES (3,55,'Male','Heart Disease','Dr Shah',20000);
INSERT INTO patients VALUES (4,22,'Female','Flu','Dr Kulkarni',1500);
INSERT INTO patients VALUES (5,40,'Male','Diabetes','Dr Shah',4500);
INSERT INTO patients VALUES (6,60,'Female','Heart Disease','Dr Shah',22000);
INSERT INTO patients VALUES (7,35,'Male','Fever','Dr Patil',1800);
INSERT INTO patients VALUES (8,28,'Female','Diabetes','Dr Kulkarni',4800);
INSERT INTO patients VALUES (9,50,'Male','Flu','Dr Patil',1200);
INSERT INTO patients VALUES (10,42,'Female','Heart Disease','Dr Shah',25000);
INSERT INTO patients VALUES (11,33,'Male','Fever','Dr Kulkarni',2200);
INSERT INTO patients VALUES (12,67,'Female','Diabetes','Dr Shah',5500);
INSERT INTO patients VALUES (13,48,'Male','Heart Disease','Dr Patil',18000);
INSERT INTO patients VALUES (14,25,'Female','Flu','Dr Kulkarni',1300);
INSERT INTO patients VALUES (15,38,'Male','Diabetes','Dr Patil',4700);
INSERT INTO patients VALUES (16,52,'Female','Fever','Dr Shah',2100);
INSERT INTO patients VALUES (17,44,'Male','Heart Disease','Dr Kulkarni',21000);
INSERT INTO patients VALUES (18,29,'Female','Flu','Dr Patil',1400);
INSERT INTO patients VALUES (19,63,'Male','Diabetes','Dr Shah',6000);
INSERT INTO patients VALUES (20,37,'Female','Heart Disease','Dr Shah',23000);
INSERT INTO patients VALUES (21,41,'Male','Fever','Dr Kulkarni',1900);
INSERT INTO patients VALUES (22,56,'Female','Diabetes','Dr Patil',5200);
INSERT INTO patients VALUES (23,31,'Male','Flu','Dr Shah',1600);
INSERT INTO patients VALUES (24,49,'Female','Heart Disease','Dr Patil',19000);
INSERT INTO patients VALUES (25,26,'Male','Fever','Dr Kulkarni',2000);
INSERT INTO patients VALUES (26,58,'Female','Diabetes','Dr Shah',5800);
INSERT INTO patients VALUES (27,43,'Male','Heart Disease','Dr Shah',24000);
INSERT INTO patients VALUES (28,34,'Female','Flu','Dr Patil',1100);
INSERT INTO patients VALUES (29,61,'Male','Diabetes','Dr Kulkarni',5100);
INSERT INTO patients VALUES (30,27,'Female','Fever','Dr Shah',1750);

SELECT * FROM patients;

SELECT disease, COUNT(*) AS patient_count
FROM patients GROUP BY disease ORDER BY patient_count DESC;

SELECT ROUND(AVG(treatment_cost), 2) AS avg_cost FROM patients;

SELECT disease, ROUND(AVG(treatment_cost), 2) AS avg_cost
FROM patients GROUP BY disease ORDER BY avg_cost DESC;

SELECT doctor, COUNT(*) AS total_patients
FROM patients GROUP BY doctor ORDER BY total_patients DESC;
