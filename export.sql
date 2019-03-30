--------------------------------------------------------
--  File created - Saturday-September-09-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BONUSES
--------------------------------------------------------

  CREATE TABLE "BONUSES" 
   (	"BONUS_ID" VARCHAR2(20), 
	"BONUS" NUMBER, 
	"ALLOWANCES" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "DEPARTMENTS" 
   (	"D_ID" VARCHAR2(20), 
	"D_NAME" VARCHAR2(50), 
	"D_LOCATION" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "EMPLOYEES" 
   (	"E_ID" NUMBER, 
	"E_NAME" VARCHAR2(30), 
	"E_PHONE" NUMBER, 
	"E_EMAIL" VARCHAR2(30), 
	"E_ADDRESS" VARCHAR2(100), 
	"E_GENDER" CHAR(1), 
	"PAY_ID" VARCHAR2(20), 
	"JOB_ID" VARCHAR2(20), 
	"D_ID" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table JOBS
--------------------------------------------------------

  CREATE TABLE "JOBS" 
   (	"JOB_ID" VARCHAR2(20), 
	"JOB_TITLE" VARCHAR2(20), 
	"MIN_SALARY" NUMBER, 
	"MAX_SALARY" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table JOB_DETAILS
--------------------------------------------------------

  CREATE TABLE "JOB_DETAILS" 
   (	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"E_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table MD_CATALOGS
--------------------------------------------------------

  CREATE TABLE "MD_CATALOGS" 
   (	"ID" NUMBER(*,0), 
	"CONNECTION_ID_FK" NUMBER(*,0), 
	"CATALOG_NAME" VARCHAR2(4000), 
	"DUMMY_FLAG" CHAR(1) DEFAULT 'N', 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000), 
	"COMMENTS" VARCHAR2(4000), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MD_CONNECTIONS
--------------------------------------------------------

  CREATE TABLE "MD_CONNECTIONS" 
   (	"ID" NUMBER(*,0), 
	"PROJECT_ID_FK" NUMBER(*,0), 
	"TYPE" VARCHAR2(4000), 
	"HOST" VARCHAR2(4000), 
	"PORT" NUMBER(*,0), 
	"USERNAME" VARCHAR2(4000), 
	"PASSWORD" VARCHAR2(4000), 
	"DBURL" VARCHAR2(4000), 
	"NAME" VARCHAR2(255), 
	"NATIVE_SQL" CLOB, 
	"NUM_CATALOGS" NUMBER(*,0), 
	"NUM_COLUMNS" NUMBER(*,0), 
	"NUM_CONSTRAINTS" NUMBER(*,0), 
	"NUM_GROUPS" NUMBER(*,0), 
	"NUM_ROLES" NUMBER(*,0), 
	"NUM_INDEXES" NUMBER(*,0), 
	"NUM_OTHER_OBJECTS" NUMBER(*,0), 
	"NUM_PACKAGES" NUMBER(*,0), 
	"NUM_PRIVILEGES" NUMBER(*,0), 
	"NUM_SCHEMAS" NUMBER(*,0), 
	"NUM_SEQUENCES" NUMBER(*,0), 
	"NUM_STORED_PROGRAMS" NUMBER(*,0), 
	"NUM_SYNONYMS" NUMBER(*,0), 
	"NUM_TABLES" NUMBER(*,0), 
	"NUM_TABLESPACES" NUMBER(*,0), 
	"NUM_TRIGGERS" NUMBER(*,0), 
	"NUM_USER_DEFINED_DATA_TYPES" NUMBER(*,0), 
	"NUM_USERS" NUMBER(*,0), 
	"NUM_VIEWS" NUMBER(*,0), 
	"COMMENTS" VARCHAR2(4000), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MD_CONSTRAINTS
--------------------------------------------------------

  CREATE TABLE "MD_CONSTRAINTS" 
   (	"ID" NUMBER(*,0), 
	"DELETE_CLAUSE" VARCHAR2(4000), 
	"NAME" VARCHAR2(4000), 
	"CONSTRAINT_TYPE" VARCHAR2(4000), 
	"TABLE_ID_FK" NUMBER(*,0), 
	"REFTABLE_ID_FK" NUMBER(*,0), 
	"CONSTRAINT_TEXT" CLOB, 
	"LANGUAGE" VARCHAR2(40), 
	"COMMENTS" VARCHAR2(4000), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MD_DERIVATIVES
--------------------------------------------------------

  CREATE TABLE "MD_DERIVATIVES" 
   (	"ID" NUMBER(*,0), 
	"SRC_ID" NUMBER(*,0), 
	"SRC_TYPE" VARCHAR2(4000), 
	"DERIVED_ID" NUMBER(*,0), 
	"DERIVED_TYPE" VARCHAR2(4000), 
	"DERIVED_CONNECTION_ID_FK" NUMBER(*,0), 
	"TRANSFORMED" CHAR(1), 
	"ORIGINAL_IDENTIFIER" VARCHAR2(4000), 
	"NEW_IDENTIFIER" VARCHAR2(4000), 
	"DERIVED_OBJECT_NAMESPACE" VARCHAR2(40), 
	"DERIVATIVE_REASON" VARCHAR2(10), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MD_INDEX_DETAILS
--------------------------------------------------------

  CREATE TABLE "MD_INDEX_DETAILS" 
   (	"ID" NUMBER(*,0), 
	"INDEX_ID_FK" NUMBER(*,0), 
	"COLUMN_ID_FK" NUMBER(*,0), 
	"INDEX_PORTION" NUMBER(*,0), 
	"DETAIL_ORDER" NUMBER(*,0), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MD_MIGR_PARAMETER
--------------------------------------------------------

  CREATE TABLE "MD_MIGR_PARAMETER" 
   (	"ID" NUMBER(*,0), 
	"CONNECTION_ID_FK" NUMBER(*,0), 
	"OBJECT_ID" NUMBER(*,0), 
	"OBJECT_TYPE" VARCHAR2(4000), 
	"PARAM_EXISTING" NUMBER(*,0), 
	"PARAM_ORDER" NUMBER(*,0), 
	"PARAM_NAME" VARCHAR2(4000), 
	"PARAM_TYPE" VARCHAR2(4000), 
	"PARAM_DATA_TYPE" VARCHAR2(4000), 
	"PERCISION" NUMBER(*,0), 
	"SCALE" NUMBER(*,0), 
	"NULLABLE" CHAR(1), 
	"DEFAULT_VALUE" VARCHAR2(4000), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MD_SCHEMAS
--------------------------------------------------------

  CREATE TABLE "MD_SCHEMAS" 
   (	"ID" NUMBER(*,0), 
	"CATALOG_ID_FK" NUMBER(*,0), 
	"NAME" VARCHAR2(4000), 
	"TYPE" CHAR(1), 
	"CHARACTER_SET" VARCHAR2(4000), 
	"VERSION_TAG" VARCHAR2(40), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000), 
	"COMMENTS" VARCHAR2(4000), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MD_SEQUENCES
--------------------------------------------------------

  CREATE TABLE "MD_SEQUENCES" 
   (	"ID" NUMBER(*,0), 
	"SCHEMA_ID_FK" NUMBER(*,0), 
	"NAME" VARCHAR2(4000), 
	"SEQ_START" NUMBER, 
	"INCR" NUMBER DEFAULT 1, 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000), 
	"COMMENTS" VARCHAR2(4000), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255) DEFAULT '0', 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MD_TABLESPACES
--------------------------------------------------------

  CREATE TABLE "MD_TABLESPACES" 
   (	"ID" NUMBER(*,0), 
	"SCHEMA_ID_FK" NUMBER(*,0), 
	"TABLESPACE_NAME" VARCHAR2(4000), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000), 
	"COMMENTS" VARCHAR2(4000), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MIGR_DATATYPE_TRANSFORM_MAP
--------------------------------------------------------

  CREATE TABLE "MIGR_DATATYPE_TRANSFORM_MAP" 
   (	"ID" NUMBER(*,0), 
	"PROJECT_ID_FK" NUMBER(*,0), 
	"MAP_NAME" VARCHAR2(4000), 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MIGR_DATATYPE_TRANSFORM_RULE
--------------------------------------------------------

  CREATE TABLE "MIGR_DATATYPE_TRANSFORM_RULE" 
   (	"ID" NUMBER(*,0), 
	"MAP_ID_FK" NUMBER(*,0), 
	"SOURCE_DATA_TYPE_NAME" VARCHAR2(4000), 
	"SOURCE_PRECISION" NUMBER, 
	"SOURCE_SCALE" NUMBER, 
	"TARGET_DATA_TYPE_NAME" VARCHAR2(4000), 
	"TARGET_PRECISION" NUMBER, 
	"TARGET_SCALE" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER(*,0) DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PAYMENTS
--------------------------------------------------------

  CREATE TABLE "PAYMENTS" 
   (	"PAY_ID" VARCHAR2(20), 
	"SALARY" VARCHAR2(20), 
	"LEAVE" NUMBER(20,0), 
	"LOAN" VARCHAR2(20), 
	"BONUS_ID" VARCHAR2(20), 
	"TAX" NUMBER
   ) ;

---------------------------------------------------
--   DATA FOR TABLE BONUSES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into BONUSES
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('11_100',3000,1000);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('12_101',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('13_102',6000,5500);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('14_103',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('15_104',8000,7000);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('16_105',3000,2500);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('17_106',2000,2000);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('18_107',1000,500);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('19_108',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('20_109',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('21_110',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('22_111',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('23_112',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('24_113',6000,2000);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('25_114',3000,2500);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('26_115',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('27_116',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('28_117',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('29_118',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('30_119',0,0);
Insert into BONUSES (BONUS_ID,BONUS,ALLOWANCES) values ('31_120',0,0);

---------------------------------------------------
--   END DATA FOR TABLE BONUSES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE DEPARTMENTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DEPARTMENTS
Insert into DEPARTMENTS (D_ID,D_NAME,D_LOCATION) values ('AF_001','Accounting and finance','1001');
Insert into DEPARTMENTS (D_ID,D_NAME,D_LOCATION) values ('M_002','Management','1002');
Insert into DEPARTMENTS (D_ID,D_NAME,D_LOCATION) values ('C_003','Corporative','1003');
Insert into DEPARTMENTS (D_ID,D_NAME,D_LOCATION) values ('G_004','Graphics','1004');
Insert into DEPARTMENTS (D_ID,D_NAME,D_LOCATION) values ('PR_005','Public Relations','1005');
Insert into DEPARTMENTS (D_ID,D_NAME,D_LOCATION) values ('HR_006','Human Resources','1006');
Insert into DEPARTMENTS (D_ID,D_NAME,D_LOCATION) values ('P_007','Purchasing','1007');

---------------------------------------------------
--   END DATA FOR TABLE DEPARTMENTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EMPLOYEES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into EMPLOYEES
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (100,'Adil Aslam',92635297623,'adilaslam@gmail.com','221 block C, karachi','M','1_100','MAN','M_002');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (101,'Naveed Raza',92535176453,'naveedraza@gmail.com','222 block D, karachi','M','2_101','DIR','AF_001');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (102,'Amna Habibi',92314852901,'amnahabibi@gmail.com','282 block H, karachi','F','3_102','MEM','G_004');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (103,'Rija Butt',92451093451,'rijabutt@gmail.com','332 block H, karachi','F','4_103','CLK','P_007');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (104,'Sania Fatima',92341674932,'saniafatima@gmail.com','227 block A, karachi','F','5_104','DSG','G_004');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (105,'Surman Ahuja',92536178391,'surmanahuja@gmail.com','225 block H, karachi','F','6_105','MAN','HR_006');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (106,'M.Athar',92381096374,'mathar@gmail.com','321 block B, karachi','M','7_106','A_MAN','C_003');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (107,'Ramisha Faheem',92341973815,'ramishaf@gmail.com','281 block G, karachi','F','8_107','MEM','P_007');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (108,'Areeba Shoaib',92435618935,'areebashoaib@gmail.com','321 block A, karachi','F','9_108','MEM','HR_006');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (109,'ShahNihal',92351673540,'shahnihal@gmail.com','287 block B, karachi','M','10_109','DIR','C_003');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (110,'Salman Raza',92345000918,'salmanraza@gmail.com','333 block N, karachi','M','11_110','DSG','G_004');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (111,'Zain Ashfaq',92367189300,'zainashfaq@gmail.com','411 block G, karachi','M','12_111','CLK','AF_001');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (112,'AbdulAziz',92830178340,'abdulaziz@gmail.com','110 block J, karachi','M','13_112','AMB','PR_005');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (113,'M.Arsalan',92378209217,'marsalan@gmail.com','322 block J, karachi','M','14_113','AMB','PR_005');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (114,'Aisha Ahmed',92367189092,'aishaahmed@gmail.com','111 block C, karachi','F','15_114','MAN','PR_005');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (115,'Haiqa Faiq',92678109732,'haiqafaiq@gmail.com','115 block K, karachi','F','16_115','DIR','M_002');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (116,'Mirza Sami',92356187639,'mirzasami@gmail.com','176 block M, karachi','M','17_116','DSG','G_004');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (117,'Shahzaib Ahmed',92617287309,'shahzaib@gmail.com','200 block N, karachi','M','18_117','A_MAN','P_007');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (118,'Yousuf Siddique',92871670923,'yousufsidd@gmail.com','281 block B, karachi','M','19_118','CLK','PR_005');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (119,'Fahad Ali Khan',92638298721,'fahadali@gmail.com','298 block D, karachi','M','20_119','MAN','C_003');
Insert into EMPLOYEES (E_ID,E_NAME,E_PHONE,E_EMAIL,E_ADDRESS,E_GENDER,PAY_ID,JOB_ID,D_ID) values (120,'Sohaib Akram',92381998176,'sohaib@gmail.com','265 block D, karachi','M','21_120','A_MAN','AF_001');

---------------------------------------------------
--   END DATA FOR TABLE EMPLOYEES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE JOBS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into JOBS
Insert into JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AMB','Ambassador',25000,50000);
Insert into JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('MAN','Manager',25000,40000);
Insert into JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('A_MAN','Assistant Manager',25000,50000);
Insert into JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('DIR','Director',30000,45000);
Insert into JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('MEM','Member',35000,45000);
Insert into JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('CLK','Clerk',35000,50000);
Insert into JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('DSG','Designer',25000,45000);

---------------------------------------------------
--   END DATA FOR TABLE JOBS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE JOB_DETAILS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into JOB_DETAILS
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-JAN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),100);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-JAN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-NOV-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),101);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-FEB-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('29-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),102);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-JAN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),103);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('03-JAN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),104);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-FEB-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('29-NOV-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),105);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-MAR-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('31-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),106);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-JAN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-NOV-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),107);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-FEB-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('31-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),108);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-MAR-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('29-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),109);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-MAR-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),110);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-FEB-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('31-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),111);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('02-JAN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('28-NOV-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),112);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-FEB-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-NOV-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),113);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-JAN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),114);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-MAR-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('29-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),115);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-JAN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('31-OCT-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),116);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-FEB-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('31-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),117);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-MAR-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('31-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),118);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('01-JAN-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-NOV-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),119);
Insert into JOB_DETAILS (START_DATE,END_DATE,E_ID) values (to_timestamp('02-FEB-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('30-DEC-17 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),120);

---------------------------------------------------
--   END DATA FOR TABLE JOB_DETAILS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MD_CATALOGS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MD_CATALOGS

---------------------------------------------------
--   END DATA FOR TABLE MD_CATALOGS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MD_CONNECTIONS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MD_CONNECTIONS

---------------------------------------------------
--   END DATA FOR TABLE MD_CONNECTIONS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MD_CONSTRAINTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MD_CONSTRAINTS

---------------------------------------------------
--   END DATA FOR TABLE MD_CONSTRAINTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MD_DERIVATIVES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MD_DERIVATIVES

---------------------------------------------------
--   END DATA FOR TABLE MD_DERIVATIVES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MD_INDEX_DETAILS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MD_INDEX_DETAILS

---------------------------------------------------
--   END DATA FOR TABLE MD_INDEX_DETAILS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MD_MIGR_PARAMETER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MD_MIGR_PARAMETER

---------------------------------------------------
--   END DATA FOR TABLE MD_MIGR_PARAMETER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MD_SCHEMAS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MD_SCHEMAS

---------------------------------------------------
--   END DATA FOR TABLE MD_SCHEMAS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MD_SEQUENCES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MD_SEQUENCES

---------------------------------------------------
--   END DATA FOR TABLE MD_SEQUENCES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MD_TABLESPACES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MD_TABLESPACES

---------------------------------------------------
--   END DATA FOR TABLE MD_TABLESPACES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MIGR_DATATYPE_TRANSFORM_MAP
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MIGR_DATATYPE_TRANSFORM_MAP

---------------------------------------------------
--   END DATA FOR TABLE MIGR_DATATYPE_TRANSFORM_MAP
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MIGR_DATATYPE_TRANSFORM_RULE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MIGR_DATATYPE_TRANSFORM_RULE

---------------------------------------------------
--   END DATA FOR TABLE MIGR_DATATYPE_TRANSFORM_RULE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PAYMENTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PAYMENTS
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('1_100','30000',2000,'2000','11_100',3);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('2_101','30000',0,'0','12_101',3);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('3_102','40000',0,'0','13_102',4);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('4_103','35000',1000,'0','14_103',3.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('5_104','45000',3000,'0','15_104',4.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('6_105','30000',0,'0','16_105',3);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('7_106','25000',1000,'0','17_106',2.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('8_107','35000',1000,'6000','18_107',3.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('9_108','40000',1000,'0','19_108',4);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('10_109','45000',0,'0','20_109',4.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('11_110','35000',0,'0','21_110',3.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('12_111','50000',4000,'0','22_111',5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('13_112','45000',1000,'0','23_112',4.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('14_113','30000',1000,'0','24_113',3);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('15_114','25000',0,'0','25_114',2.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('16_115','30000',0,'0','26_115',3);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('17_116','25000',0,'0','27_116',2.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('18_117','50000',0,'0','28_117',5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('19_118','45000',0,'4000','29_118',4.5);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('20_119','30000',0,'0','30_119',3);
Insert into PAYMENTS (PAY_ID,SALARY,LEAVE,LOAN,BONUS_ID,TAX) values ('21_120','50000',0,'0','31_120',5);

---------------------------------------------------
--   END DATA FOR TABLE PAYMENTS
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table MIGR_DATATYPE_TRANSFORM_RULE
--------------------------------------------------------

  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_RULE" ADD CONSTRAINT "MIGR_DATATYPE_TRANSFORM_R_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("MAP_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("SOURCE_DATA_TYPE_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("TARGET_DATA_TYPE_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_CONSTRAINTS
--------------------------------------------------------

  ALTER TABLE "MD_CONSTRAINTS" ADD CONSTRAINT "MD_CONSTRAINTS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MD_CONSTRAINTS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CONSTRAINTS" MODIFY ("TABLE_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CONSTRAINTS" MODIFY ("LANGUAGE" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CONSTRAINTS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CONSTRAINTS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_CATALOGS
--------------------------------------------------------

  ALTER TABLE "MD_CATALOGS" ADD CONSTRAINT "MD_CATALOGS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MD_CATALOGS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CATALOGS" MODIFY ("CONNECTION_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CATALOGS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CATALOGS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_TABLESPACES
--------------------------------------------------------

  ALTER TABLE "MD_TABLESPACES" ADD CONSTRAINT "MD_TABLESPACES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MD_TABLESPACES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_TABLESPACES" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_TABLESPACES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_TABLESPACES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_MIGR_PARAMETER
--------------------------------------------------------

  ALTER TABLE "MD_MIGR_PARAMETER" ADD CONSTRAINT "MIGR_PARAMETER_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("CONNECTION_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("OBJECT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("OBJECT_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("PARAM_EXISTING" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("PARAM_ORDER" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("PARAM_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("PARAM_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("PARAM_DATA_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("NULLABLE" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_MIGR_PARAMETER" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JOBS
--------------------------------------------------------

  ALTER TABLE "JOBS" ADD CONSTRAINT "JOBS_PK" PRIMARY KEY ("JOB_ID") ENABLE;
 
  ALTER TABLE "JOBS" MODIFY ("JOB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "JOBS" MODIFY ("JOB_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "JOBS" MODIFY ("MIN_SALARY" NOT NULL ENABLE);
 
  ALTER TABLE "JOBS" MODIFY ("MAX_SALARY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_SCHEMAS
--------------------------------------------------------

  ALTER TABLE "MD_SCHEMAS" ADD CONSTRAINT "MD_SCHEMAS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MD_SCHEMAS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SCHEMAS" MODIFY ("CATALOG_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SCHEMAS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SCHEMAS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JOB_DETAILS
--------------------------------------------------------

  ALTER TABLE "JOB_DETAILS" MODIFY ("START_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "DEPARTMENTS" ADD CONSTRAINT "DEPARTMENTS_PK" PRIMARY KEY ("D_ID") ENABLE;
 
  ALTER TABLE "DEPARTMENTS" MODIFY ("D_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DEPARTMENTS" MODIFY ("D_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "DEPARTMENTS" MODIFY ("D_LOCATION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BONUSES
--------------------------------------------------------

  ALTER TABLE "BONUSES" ADD CONSTRAINT "BONUSES_PK" PRIMARY KEY ("BONUS_ID") ENABLE;
 
  ALTER TABLE "BONUSES" MODIFY ("BONUS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_INDEX_DETAILS
--------------------------------------------------------

  ALTER TABLE "MD_INDEX_DETAILS" ADD CONSTRAINT "MD_INDEX_DETAILS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MD_INDEX_DETAILS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_INDEX_DETAILS" MODIFY ("INDEX_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_INDEX_DETAILS" MODIFY ("COLUMN_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_INDEX_DETAILS" MODIFY ("DETAIL_ORDER" NOT NULL ENABLE);
 
  ALTER TABLE "MD_INDEX_DETAILS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_INDEX_DETAILS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MIGR_DATATYPE_TRANSFORM_MAP
--------------------------------------------------------

  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_MAP" ADD CONSTRAINT "MIGR_DATATYPE_TRANSFORM_M_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_MAP" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_MAP" MODIFY ("PROJECT_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_MAP" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MIGR_DATATYPE_TRANSFORM_MAP" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_SEQUENCES
--------------------------------------------------------

  ALTER TABLE "MD_SEQUENCES" ADD CONSTRAINT "MD_SEQUENCES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MD_SEQUENCES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SEQUENCES" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SEQUENCES" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SEQUENCES" MODIFY ("SEQ_START" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SEQUENCES" MODIFY ("INCR" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SEQUENCES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SEQUENCES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
 
  ALTER TABLE "MD_SEQUENCES" MODIFY ("CREATED_BY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAYMENTS
--------------------------------------------------------

  ALTER TABLE "PAYMENTS" ADD CONSTRAINT "PAYMENTS_PK" PRIMARY KEY ("PAY_ID") ENABLE;
 
  ALTER TABLE "PAYMENTS" MODIFY ("PAY_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PAYMENTS" MODIFY ("SALARY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_DERIVATIVES
--------------------------------------------------------

  ALTER TABLE "MD_DERIVATIVES" ADD CONSTRAINT "MIGRDREIVATIVES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MD_DERIVATIVES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_DERIVATIVES" MODIFY ("SRC_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_DERIVATIVES" MODIFY ("DERIVED_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_DERIVATIVES" MODIFY ("DERIVED_CONNECTION_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_DERIVATIVES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_DERIVATIVES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "EMPLOYEES_PK" PRIMARY KEY ("E_ID") ENABLE;
 
  ALTER TABLE "EMPLOYEES" MODIFY ("E_ID" NOT NULL ENABLE);
 
  ALTER TABLE "EMPLOYEES" MODIFY ("E_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "EMPLOYEES" MODIFY ("E_PHONE" NOT NULL ENABLE);
 
  ALTER TABLE "EMPLOYEES" MODIFY ("E_EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "EMPLOYEES" MODIFY ("E_ADDRESS" NOT NULL ENABLE);
 
  ALTER TABLE "EMPLOYEES" MODIFY ("E_GENDER" NOT NULL ENABLE);
 
  ALTER TABLE "EMPLOYEES" MODIFY ("PAY_ID" NOT NULL ENABLE);
 
  ALTER TABLE "EMPLOYEES" MODIFY ("JOB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "EMPLOYEES" MODIFY ("D_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_CONNECTIONS
--------------------------------------------------------

  ALTER TABLE "MD_CONNECTIONS" ADD CONSTRAINT "MD_CONNECTIONS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "MD_CONNECTIONS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CONNECTIONS" MODIFY ("PROJECT_ID_FK" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CONNECTIONS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MD_CONNECTIONS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Index MD_CONNECTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MD_CONNECTIONS_PK" ON "MD_CONNECTIONS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index DEPARTMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEPARTMENTS_PK" ON "DEPARTMENTS" ("D_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MIGRDREIVATIVES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIGRDREIVATIVES_PK" ON "MD_DERIVATIVES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index MD_TABLESPACES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MD_TABLESPACES_PK" ON "MD_TABLESPACES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index MIGR_PARAMETER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIGR_PARAMETER_PK" ON "MD_MIGR_PARAMETER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index MD_CATALOGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MD_CATALOGS_PK" ON "MD_CATALOGS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index EMPLOYEES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EMPLOYEES_PK" ON "EMPLOYEES" ("E_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MIGR_DATATYPE_TRANSFORM_R_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIGR_DATATYPE_TRANSFORM_R_PK" ON "MIGR_DATATYPE_TRANSFORM_RULE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index MD_INDEX_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MD_INDEX_DETAILS_PK" ON "MD_INDEX_DETAILS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index MD_SCHEMAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MD_SCHEMAS_PK" ON "MD_SCHEMAS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BONUSES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BONUSES_PK" ON "BONUSES" ("BONUS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index JOBS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOBS_PK" ON "JOBS" ("JOB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PAYMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAYMENTS_PK" ON "PAYMENTS" ("PAY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MIGR_DATATYPE_TRANSFORM_M_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIGR_DATATYPE_TRANSFORM_M_PK" ON "MIGR_DATATYPE_TRANSFORM_MAP" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index MD_SEQUENCES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MD_SEQUENCES_PK" ON "MD_SEQUENCES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index MD_CONSTRAINTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MD_CONSTRAINTS_PK" ON "MD_CONSTRAINTS" ("ID") 
  ;


--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "EP_DP_FK" FOREIGN KEY ("D_ID")
	  REFERENCES "DEPARTMENTS" ("D_ID") ENABLE;
 
  ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "EP_JB_FK" FOREIGN KEY ("JOB_ID")
	  REFERENCES "JOBS" ("JOB_ID") ENABLE;
 
  ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "EP_PY_FK" FOREIGN KEY ("PAY_ID")
	  REFERENCES "PAYMENTS" ("PAY_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table JOB_DETAILS
--------------------------------------------------------

  ALTER TABLE "JOB_DETAILS" ADD CONSTRAINT "JD_EP_FK" FOREIGN KEY ("E_ID")
	  REFERENCES "EMPLOYEES" ("E_ID") ENABLE;











--------------------------------------------------------
--  Ref Constraints for Table PAYMENTS
--------------------------------------------------------

  ALTER TABLE "PAYMENTS" ADD CONSTRAINT "PY_BO_FK" FOREIGN KEY ("BONUS_ID")
	  REFERENCES "BONUSES" ("BONUS_ID") ENABLE;
--------------------------------------------------------
--  DDL for View DEPT_AF
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DEPT_AF" ("E_ID", "E_NAME", "E_PHONE", "E_EMAIL", "E_ADDRESS", "E_GENDER", "PAY_ID", "JOB_ID") AS 
  select e_id, e_name, e_phone, e_email, e_address, e_gender, pay_id, job_id
from employees
where d_id = 'AF_001';
--------------------------------------------------------
--  DDL for View DEPT_C
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DEPT_C" ("E_ID", "E_NAME", "E_PHONE", "E_EMAIL", "E_ADDRESS", "E_GENDER", "PAY_ID", "JOB_ID") AS 
  select e_id, e_name, e_phone, e_email, e_address, e_gender, pay_id, job_id
from employees
where d_id = 'C_003';
--------------------------------------------------------
--  DDL for View DEPT_G
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DEPT_G" ("E_ID", "E_NAME", "E_PHONE", "E_EMAIL", "E_ADDRESS", "E_GENDER", "PAY_ID", "JOB_ID") AS 
  select e_id, e_name, e_phone, e_email, e_address, e_gender, pay_id, job_id
from employees
where d_id = 'G_004';
--------------------------------------------------------
--  DDL for View DEPT_HR
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DEPT_HR" ("E_ID", "E_NAME", "E_PHONE", "E_EMAIL", "E_ADDRESS", "E_GENDER", "PAY_ID", "JOB_ID") AS 
  select e_id, e_name, e_phone, e_email, e_address, e_gender, pay_id, job_id
from employees
where d_id = 'HR_006';
--------------------------------------------------------
--  DDL for View DEPT_M
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DEPT_M" ("E_ID", "E_NAME", "E_PHONE", "E_EMAIL", "E_ADDRESS", "E_GENDER", "PAY_ID", "JOB_ID") AS 
  select e_id, e_name, e_phone, e_email, e_address, e_gender, pay_id, job_id
from employees
where d_id = 'M_002';
--------------------------------------------------------
--  DDL for View DEPT_P
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DEPT_P" ("E_ID", "E_NAME", "E_PHONE", "E_EMAIL", "E_ADDRESS", "E_GENDER", "PAY_ID", "JOB_ID") AS 
  select e_id, e_name, e_phone, e_email, e_address, e_gender, pay_id, job_id
from employees
where d_id = 'P_007';
--------------------------------------------------------
--  DDL for View DEPT_PR
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DEPT_PR" ("E_ID", "E_NAME", "E_PHONE", "E_EMAIL", "E_ADDRESS", "E_GENDER", "PAY_ID", "JOB_ID") AS 
  select e_id, e_name, e_phone, e_email, e_address, e_gender, pay_id, job_id
from employees
where d_id = 'PR_005';
--------------------------------------------------------
--  DDL for View DET_100
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_100" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 100 and job_details.e_id = 100 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_101
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_101" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 101 and job_details.e_id = 101 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_102
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_102" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 102 and job_details.e_id = 102 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_103
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_103" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 103 and job_details.e_id = 103 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_104
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_104" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 104 and job_details.e_id = 104 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_105
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_105" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 105 and job_details.e_id = 105 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_106
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_106" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 106 and job_details.e_id = 106 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_107
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_107" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 107 and job_details.e_id = 107 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_108
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_108" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 108 and job_details.e_id = 108 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_109
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_109" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 109 and job_details.e_id = 109 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_110
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_110" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 110 and job_details.e_id = 110 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_111
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_111" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 111 and job_details.e_id = 111 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_112
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_112" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 112 and job_details.e_id = 112 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_113
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_113" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 113 and job_details.e_id = 113 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_114
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_114" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 114 and job_details.e_id = 114 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_115
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_115" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 115 and job_details.e_id = 115 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_116
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_116" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 116 and job_details.e_id = 116 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_117
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_117" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 117 and job_details.e_id = 117 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_118
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_118" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 118 and job_details.e_id = 118 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_119
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_119" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 119 and job_details.e_id = 119 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View DET_120
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DET_120" ("E_NAME", "D_ID", "JOB_TITLE", "START_DATE", "END_DATE") AS 
  select e_name, d_id, job_title, start_date, end_date
from employees, jobs, job_details
where employees.e_id = 120 and job_details.e_id = 120 and employees.job_id = jobs.job_id;
--------------------------------------------------------
--  DDL for View EMP_100
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_100" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 100 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_101
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_101" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 101 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_102
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_102" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 102 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_103
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_103" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 103 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_104
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_104" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 104 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_105
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_105" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 105 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_106
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_106" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 106 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_107
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_107" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 107 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_108
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_108" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 108 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_109
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_109" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 109 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_110
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_110" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 110 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_111
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_111" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 111 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_112
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_112" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 112 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_113
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_113" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 113 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_114
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_114" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 114 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_115
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_115" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 115 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_116
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_116" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 116 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_117
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_117" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 117 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_118
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_118" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 118 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_119
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_119" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 119 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_120
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_120" ("E_NAME", "PAY_ID", "SALARY", "LEAVE", "TAX", "LOAN", "BONUS", "ALLOWANCES", "TOTALSALARY") AS 
  select e.e_name, e.pay_id, p.salary, p.leave, p.tax, p.loan, b.bonus, b.allowances, (p.salary + b.bonus + b.allowances - p.loan -p.leave - (p.tax * p.salary / 100)) totalsalary
	from employees e, payments p, bonuses b
	where e.e_id = 120 and e.pay_id = p.pay_id and b.bonus_id = p.bonus_id;
--------------------------------------------------------
--  DDL for View EMP_BON
--------------------------------------------------------

  CREATE OR REPLACE VIEW "EMP_BON" ("E_ID", "E_NAME", "PAY_ID", "BONUS_ID", "BONUS", "ALLOWANCES") AS 
  select e.e_id, e.e_name, p.pay_id, b.bonus_id, b.bonus, b.allowances
from  bonuses b, employees e, payments p
where b.bonus > 0 and b.bonus_id = p.bonus_id and p.pay_id = e.pay_id ;
--------------------------------------------------------
--  DDL for View JOB_AMB
--------------------------------------------------------

  CREATE OR REPLACE VIEW "JOB_AMB" ("E_ID", "E_NAME", "JOB_TITLE", "D_NAME") AS 
  select  e.e_id, e.e_name, j.job_title, d.d_name
from employees e, jobs j, departments d
where e.job_id = 'AMB' and e.job_id = j.job_id and e.d_id = d.d_id;
--------------------------------------------------------
--  DDL for View JOB_A_MAN
--------------------------------------------------------

  CREATE OR REPLACE VIEW "JOB_A_MAN" ("E_ID", "E_NAME", "JOB_TITLE", "D_NAME") AS 
  select  e.e_id, e.e_name, j.job_title, d.d_name
from employees e, jobs j, departments d
where e.job_id = 'A_MAN' and e.job_id = j.job_id and e.d_id = d.d_id;
--------------------------------------------------------
--  DDL for View JOB_CLK
--------------------------------------------------------

  CREATE OR REPLACE VIEW "JOB_CLK" ("E_ID", "E_NAME", "JOB_TITLE", "D_NAME") AS 
  select  e.e_id, e.e_name, j.job_title, d.d_name
from employees e, jobs j, departments d
where e.job_id = 'CLK' and e.job_id = j.job_id and e.d_id = d.d_id;
--------------------------------------------------------
--  DDL for View JOB_DIR
--------------------------------------------------------

  CREATE OR REPLACE VIEW "JOB_DIR" ("E_ID", "E_NAME", "JOB_TITLE", "D_NAME") AS 
  select  e.e_id, e.e_name, j.job_title, d.d_name
from employees e, jobs j, departments d
where e.job_id = 'DIR' and e.job_id = j.job_id and e.d_id = d.d_id;
--------------------------------------------------------
--  DDL for View JOB_DSG
--------------------------------------------------------

  CREATE OR REPLACE VIEW "JOB_DSG" ("E_ID", "E_NAME", "JOB_TITLE", "D_NAME") AS 
  select  e.e_id, e.e_name, j.job_title, d.d_name
from employees e, jobs j, departments d
where e.job_id = 'DSG' and e.job_id = j.job_id and e.d_id = d.d_id;
--------------------------------------------------------
--  DDL for View JOB_MAN
--------------------------------------------------------

  CREATE OR REPLACE VIEW "JOB_MAN" ("E_ID", "E_NAME", "JOB_TITLE", "D_NAME") AS 
  select  e.e_id, e.e_name, j.job_title, d.d_name
from employees e, jobs j, departments d
where e.job_id = 'MAN' and e.job_id = j.job_id and e.d_id = d.d_id;
--------------------------------------------------------
--  DDL for View JOB_MEM
--------------------------------------------------------

  CREATE OR REPLACE VIEW "JOB_MEM" ("E_ID", "E_NAME", "JOB_TITLE", "D_NAME") AS 
  select  e.e_id, e.e_name, j.job_title, d.d_name
from employees e, jobs j, departments d
where e.job_id = 'MEM' and e.job_id = j.job_id and e.d_id = d.d_id;
