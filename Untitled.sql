CREATE TABLE "hardwares" (
  "id" integer PRIMARY KEY,
  "type_id" integer,
  "date_of_last_service" timestamp,
  "state_id" integer,
  "audience_id" integer,
  "inventory_number" varchar[16]
);

CREATE TABLE "hardware_types" (
  "id" integer PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "states" (
  "id" integer PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "repairs" (
  "id" integer PRIMARY KEY,
  "start_date" timestamp,
  "end_date" timestamp,
  "responsible_staff_id" integer,
  "hardware_id" integer,
  "description" text
);

CREATE TABLE "audiences" (
  "id" integer PRIMARY KEY,
  "number" integer,
  "name" varchar,
  "responsible_staff_id" integer
);

CREATE TABLE "staff" (
  "id" integer PRIMARY KEY,
  "phone" varchar,
  "email" varchar
);

CREATE TABLE "staff_info" (
  "staff_id" integer,
  "first_name" varchar,
  "last_name" varchar,
  "middle_name" varchar
);

CREATE TABLE "positions" (
  "id" integer PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "staff_positions" (
  "position_id" integer,
  "staff_id" integer
);

ALTER TABLE "hardware_types" ADD FOREIGN KEY ("id") REFERENCES "hardwares" ("type_id");

ALTER TABLE "states" ADD FOREIGN KEY ("id") REFERENCES "hardwares" ("state_id");

ALTER TABLE "audiences" ADD FOREIGN KEY ("id") REFERENCES "hardwares" ("audience_id");

ALTER TABLE "hardwares" ADD FOREIGN KEY ("id") REFERENCES "repairs" ("hardware_id");

ALTER TABLE "staff" ADD FOREIGN KEY ("id") REFERENCES "repairs" ("responsible_staff_id");

ALTER TABLE "positions" ADD FOREIGN KEY ("id") REFERENCES "staff_positions" ("position_id");

ALTER TABLE "staff" ADD FOREIGN KEY ("id") REFERENCES "staff_positions" ("staff_id");

ALTER TABLE "staff_info" ADD FOREIGN KEY ("staff_id") REFERENCES "staff" ("id");

ALTER TABLE "staff" ADD FOREIGN KEY ("id") REFERENCES "audiences" ("responsible_staff_id");
