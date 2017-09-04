-- created by Oraschemadoc Wed Aug 30 22:56:56 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSNAPSHOTPACKAGE" 
   (	"SNAPSHOT_ID" NUMBER NOT NULL ENABLE, 
	"NEVRA_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_SNAPSHOTPKG_SID_FK" FOREIGN KEY ("SNAPSHOT_ID")
	  REFERENCES "SPACEUSER"."RHNSNAPSHOT" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_SNAPSHOTPKG_NID_FK" FOREIGN KEY ("NEVRA_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGENEVRA" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/