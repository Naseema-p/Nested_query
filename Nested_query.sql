CREATE TABLE Student (  
  S_ID INT PRIMARY KEY,  
  S_NAME VARCHAR(50),  
  S_ADD VARCHAR(50),  
  S_No INT,  
  S_AGE INT  
);  
INSERT INTO Student (S_ID, S_NAME, S_ADD, S_No, S_AGE)  
VALUES  
  (1, 'Aman', 'Noida', 8929403, 19),  
  (2, 'Raghav', 'Delhi', 5687030, 21),  
  (3, 'Harsh', 'Gurugram', 4020295, 18),  
  (4, 'Harshit', 'Noida', 9583920, 15);

CREATE TABLE Course (  
  C_ID INT PRIMARY KEY,  
  Cour_Name VARCHAR(50)  
);  

INSERT INTO Course (C_ID, Cour_Name)  
VALUES  
  (1, 'English'),  
  (2, 'Maths'),  
  (3, 'Science');  

CREATE TABLE S_Course (  
  S_ID INT,  
  C_ID INT,  
  FOREIGN KEY (S_ID) REFERENCES Students(S_ID),  
  FOREIGN KEY (C_ID) REFERENCES Course(C_ID)  
);  
  
INSERT INTO S_Course (S_ID, C_ID)  
VALUES  
  (1, 3),  
  (1, 2),  
  (2, 3),  
  (3, 3),  
  (3, 1),  
  (4, 2);  

Select S_NAME from Student where S_ID NOT IN  
(Select S_ID from S_Course where C_ID IN  
(SELECT C_ID from Course where Cour_Name = 'English' or Cour_Name='Maths')); 
