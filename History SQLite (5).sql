--- 11-07-2022 14:03:33
--- SQLite
SELECT * FROM demo;

--- 11-07-2022 14:03:41
--- SQLite
SELECT * FROM demo;

--- 11-07-2022 14:03:45
--- SQLite
CREATE TABLE Employee_Info_Table
(id INTEGER PRIMARY KEY , DOJ DATE, salary INTEGER );

--- 11-07-2022 13:34:19
--- SQLite
CREATE TABLE Department_Table
(dept_id INTEGER PRIMARY KEY ,dept_name VARCHAR(30));

--- 11-07-2022 13:35:13
--- SQLite
CREATE TABLE Insurance_Table
(insurance_id INTEGER PRIMARY KEY ,insurance_name VARCHAR(30));

--- 11-07-2022 13:36:10
--- SQLite
CREATE TABLE Office_Table
(office_id INTEGER PRIMARY KEY ,office_name VARCHAR(30),place VARCHAR(30));

--- 11-07-2022 13:36:45
--- SQLite
CREATE TABLE Employee_Table( 
  emp_id INTEGER PRIMARY KEY, 
  name VARCHAR(30), 
  immediate_head_id InTEGER, 
  dept_id INTEGER ,
  employee_info  INTEGER,
  insurance_id  INTEGER,
  FOREIGN KEY (dept_id) REFERENCES Department_Table(dept_id),
  FOREIGN KEY (insurance_id) REFERENCES Insurance_Table(insurance_id), 
  FOREIGN KEY (employee_info) REFERENCES Employee_Info_Table(id)
);

--- 11-07-2022 13:37:05
--- SQLite
CREATE TABLE Employee_Office_Table( 
  id INTEGER PRIMARY KEY, 
  emp_id  INTEGER,
  office_id  INTEGER,
  FOREIGN KEY (emp_id) REFERENCES Employee_Table(emp_id), 
  FOREIGN KEY (office_id) REFERENCES Office_Table(office_id)
);

--- 11-07-2022 14:04:18
--- SQLite
/***** ERROR ******
near "nsert": syntax error
 ----- 
nsert  INTO Insurance_Table (insurance_id,insurance_name) VALUES (31,"lic");

--- 11-07-2022 13:38:51
--- SQLite
insert  INTO Insurance_Table (insurance_id,insurance_name) VALUES (32,"icici");

--- 11-07-2022 13:39:03
--- SQLite
insert  INTO Insurance_Table (insurance_id,insurance_name) VALUES (33,"aditya");

--- 11-07-2022 13:39:37
--- SQLite
insert INTO Department_Table (dept_id,dept_name) values (41,"testing");

--- 11-07-2022 13:39:46
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: Department_Table.dept_id
 ----- 
insert INTO Department_Table (dept_id,dept_name) values (41,"testing");
*****/

--- 11-07-2022 13:40:05
--- SQLite
insert INTO Department_Table (dept_id,dept_name) values (42,"devloper");

--- 11-07-2022 13:40:19
--- SQLite
insert INTO Department_Table (dept_id,dept_name) values (43,"hr");
*****/

--- 11-07-2022 14:04:27
--- SQLite
Insert  INTO Insurance_Table (insurance_id,insurance_name) VALUES (31,"lic");

--- 11-07-2022 13:38:51
--- SQLite
insert  INTO Insurance_Table (insurance_id,insurance_name) VALUES (32,"icici");

--- 11-07-2022 13:39:03
--- SQLite
insert  INTO Insurance_Table (insurance_id,insurance_name) VALUES (33,"aditya");

--- 11-07-2022 13:39:37
--- SQLite
insert INTO Department_Table (dept_id,dept_name) values (41,"testing");

--- 11-07-2022 13:39:46
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: Department_Table.dept_id
 ----- 
insert INTO Department_Table (dept_id,dept_name) values (41,"testing");
*****/

--- 11-07-2022 13:40:05
--- SQLite
insert INTO Department_Table (dept_id,dept_name) values (42,"devloper");

--- 11-07-2022 13:40:19
--- SQLite
insert INTO Department_Table (dept_id,dept_name) values (43,"hr");

--- 11-07-2022 14:04:29
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: Insurance_Table.insurance_id
 ----- 
Insert  INTO Insurance_Table (insurance_id,insurance_name) VALUES (31,"lic");

--- 11-07-2022 13:38:51
--- SQLite
insert  INTO Insurance_Table (insurance_id,insurance_name) VALUES (32,"icici");

--- 11-07-2022 13:39:03
--- SQLite
insert  INTO Insurance_Table (insurance_id,insurance_name) VALUES (33,"aditya");

--- 11-07-2022 13:39:37
--- SQLite
insert INTO Department_Table (dept_id,dept_name) values (41,"testing");

--- 11-07-2022 13:39:46
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: Department_Table.dept_id
 ----- 
insert INTO Department_Table (dept_id,dept_name) values (41,"testing");
*****/

--- 11-07-2022 13:40:05
--- SQLite
insert INTO Department_Table (dept_id,dept_name) values (42,"devloper");

--- 11-07-2022 13:40:19
--- SQLite
insert INTO Department_Table (dept_id,dept_name) values (43,"hr");
*****/

--- 11-07-2022 14:06:10
--- SQLite
/***** ERROR ******
unrecognized token: ""hITEC);
"
 ----- 
Insert  INTO Office_Table (office_id,office_name,place) VALUES (12,"OPTIVAL","hITEC);
*****/

--- 11-07-2022 14:06:15
--- SQLite
Insert  INTO Office_Table (office_id,office_name,place) VALUES (12,"OPTIVAL","hITEC");

--- 11-07-2022 14:06:44
--- SQLite
Insert  INTO Office_Table (office_id,office_name,place) VALUES (13,"MEDPLUS","MADHAPUR");

--- 11-07-2022 14:07:03
--- SQLite
Insert  INTO Office_Table (office_id,office_name,place) VALUES (14,"MElange","balnagar");

--- 11-07-2022 14:07:51
--- SQLite
Insert  INTO Office_Table (office_id,office_name,place) VALUES (11,"mp_store","madhapur");

--- 11-07-2022 14:07:53
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: Office_Table.office_id
 ----- 
Insert  INTO Office_Table (office_id,office_name,place) VALUES (11,"mp_store","madhapur");
*****/

--- 11-07-2022 14:10:07
--- SQLite
Insert  INTO Employee_Info_Table (id,doj,salary) VALUES (21,"02/01/2022",4000);
Insert  INTO Employee_Info_Table (id,doj,salary) VALUES (22,"02/03/2022",50000);
Insert  INTO Employee_Info_Table (id,doj,salary) VALUES (23,"20/02/2022",45000);
Insert  INTO Employee_Info_Table (id,doj,salary) VALUES (24,"30/02/2022",12000);
Insert  INTO Employee_Info_Table (id,doj,salary) VALUES (25,"13/04/2022",42600);

--- 11-07-2022 14:10:54
--- SQLite
SELECT * from Employee_Info_Table;

--- 11-07-2022 15:04:03
--- SQLite
SELECT * from Office_Table;

--- 11-07-2022 15:04:18
--- SQLite
SELECT * from Employee_Info_Table;

--- 11-07-2022 15:04:30
--- SQLite
SELECT * from Employee_Table;

--- 11-07-2022 15:13:43
--- SQLite
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (51,"NIKAS",54,42,31,21);

--- 11-07-2022 15:14:11
--- SQLite
/*insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (51,"NIKAS",54,42,31,21)*/
SELECT * FROM Employee_Table;

--- 11-07-2022 15:18:12
--- SQLite
/***** ERROR ******
near "insert": syntax error
 ----- 
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (52,"SAI",55,41,31,21)
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (53,"BANDARU",56,43,32,22)
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (54,"VAIBHAV",NULL,42,32,23)
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (55,"DHEERAJ",NULL,41,31,24)
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (56,"HARI",NULL,43,32,25);
*****/

--- 11-07-2022 15:18:30
--- SQLite
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (52,"SAI",55,41,31,21);
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (53,"BANDARU",56,43,32,22);
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (54,"VAIBHAV",NULL,42,32,23);
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (55,"DHEERAJ",NULL,41,31,24);
insert into Employee_Table(
emp_id,name,immediate_head_id,dept_id,insurance_id,employee_info)
VALUES (56,"HARI",NULL,43,32,25);

--- 11-07-2022 15:19:11
--- SQLite
SELECT * FROM Employee_Table;

--- 11-07-2022 15:21:48
--- SQLite
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (61,51,12);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (62,52,13);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (63,53,14);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (64,54,12);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (65,55,13);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (66,56,13);

--- 11-07-2022 15:22:19
--- SQLite
/*INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (61,51,12);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (62,52,13);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (63,53,14);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (64,54,12);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (65,55,13);
INSERT INTO Employee_Office_Table(id,emp_id,office_id)
VALUES (66,56,13);
*/
SELECT * FROM Employee_Office_Table;

