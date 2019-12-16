

  CREATE TABLE "MI182_ALPINEDA"."CUSTOMERS" 
   (	"ID" NUMBER(12,0) NOT NULL ENABLE, 
	"CUST_FNAME" VARCHAR2(45) NOT NULL ENABLE, 
	"CUST_MI" VARCHAR2(45) NOT NULL ENABLE, 
	"CUST_LNAME" VARCHAR2(45) NOT NULL ENABLE, 
	"CUST_CONT" VARCHAR2(45) NOT NULL ENABLE, 
	"CUST_ADD" VARCHAR2(45) NOT NULL ENABLE, 
	"CUST_EADD" VARCHAR2(45) NOT NULL ENABLE, 
	"CUST_JOB" VARCHAR2(45) NOT NULL ENABLE, 
	"CUST_PAYMENT" VARCHAR2(100), 
	 CONSTRAINT "CUSTOMER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "FK_EMPLOYEE" FOREIGN KEY ("ID")
	  REFERENCES "MI182_ALPINEDA"."EMPLOYEE" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;




  CREATE TABLE "MI182_ALPINEDA"."EMPLOYEE" 
   (	"ID" NUMBER(12,0) NOT NULL ENABLE, 
	"EMP_FNAME" VARCHAR2(45) NOT NULL ENABLE, 
	"EMP_MI" VARCHAR2(45) NOT NULL ENABLE, 
	"EMP_LNAME" VARCHAR2(45) NOT NULL ENABLE, 
	"EMP_CONT" VARCHAR2(45) NOT NULL ENABLE, 
	"EMP_ADD" VARCHAR2(45) NOT NULL ENABLE, 
	"EMP_EADD" VARCHAR2(45) NOT NULL ENABLE, 
	"TEAM_NAME" VARCHAR2(45) NOT NULL ENABLE, 
	 CONSTRAINT "EMPLOYEE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "FK_CUSTOMERS" FOREIGN KEY ("ID")
	  REFERENCES "MI182_ALPINEDA"."CUSTOMERS" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;



  CREATE TABLE "MI182_ALPINEDA"."PAYMENTS" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PAYMENT_TYPE" VARCHAR2(45), 
	"PAYMENT_AMT" VARCHAR2(45), 
	"PAYMENT_DATE" VARCHAR2(45), 
	 CONSTRAINT "PAYMENT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "FK_PAYMENTS" FOREIGN KEY ("ID")
	  REFERENCES "MI182_ALPINEDA"."PAYMENTS" ("ID") ENABLE, 
	 CONSTRAINT "FK_PAYMENT" FOREIGN KEY ("ID")
	  REFERENCES "MI182_ALPINEDA"."CUSTOMERS" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;