CREATE TABLE "entities" (
  "entityid" SERIAL PRIMARY KEY NOT NULL,
  "name1" varchar(100) NOT NULL,
  "name2" varchar(100) NOT NULL,
  "type" char(1) NOT NULL
);
CREATE TABLE "entityaddress" (
  "addressid" SERIAL PRIMARY KEY NOT NULL,
  "entityid" int,
  "saddress1" varchar(255),
  "saddress2" varchar(255),
  "scity" varchar(255),
  "cstate" char(2),
  "spostalcode" varchar(10),
  "stype" varchar(50),
  CONSTRAINT "fk_entityaddress_entityid"
    FOREIGN KEY ("entityid") REFERENCES "entities"("entityid")
);
CREATE TABLE "entityemail" (
  "emailid" SERIAL PRIMARY KEY NOT NULL,
  "entityid" int,
  "semail" varchar(255),
  "stype" varchar(50),
  CONSTRAINT "fk_entityemail_entityid"
    FOREIGN KEY ("entityid") REFERENCES "entities"("entityid")
);
CREATE TABLE "entityphone" (
  "phoneid" SERIAL PRIMARY KEY NOT NULL,
  "entityid" int,
  "snumber" varchar(20),
  "sextension" varchar(20),
  "stype" varchar(50),
  CONSTRAINT "fk_entityemail_entityid"
    FOREIGN KEY ("entityid") REFERENCES "entities"("entityid")
);
CREATE TABLE "entityaddress" (
  "addressid" SERIAL PRIMARY KEY NOT NULL,
  "entityid" int,
  "saddress1" varchar(255),
  "saddress2" varchar(255),
  "scity" varchar(255),
  "cstate" char(2),
  "spostalcode" varchar(10),
  "stype" varchar(50),
  CONSTRAINT "fk_entityaddress_entityid"
    FOREIGN KEY ("entityid") REFERENCES "entities"("entityid")
);
CREATE TABLE "entityemail" (
  "emailid" SERIAL PRIMARY KEY NOT NULL,
  "entityid" int,
  "semail" varchar(255),
  "stype" varchar(50),
  CONSTRAINT "fk_entityemail_entityid"
    FOREIGN KEY ("entityid") REFERENCES "entities"("entityid")
);
CREATE TABLE "entityphone" (
  "phoneid" SERIAL PRIMARY KEY NOT NULL,
  "entityid" int,
  "snumber" varchar(20),
  "sextension" varchar(20),
  "stype" varchar(50),
  CONSTRAINT "fk_entityemail_entityid"
    FOREIGN KEY ("entityid") REFERENCES "entities"("entityid")
);
