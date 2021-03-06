BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Admin" (
	"AdminID"	INTEGER NOT NULL,
	"Role"	TEXT NOT NULL,
	"Phone#"	NUMERIC NOT NULL,
	PRIMARY KEY("AdminID")
);
CREATE TABLE IF NOT EXISTS "Member" (
	"MemeberID"	INTEGER,
	"Name"	TEXT NOT NULL,
	"Security#"	NUMERIC NOT NULL UNIQUE,
	"Phone#"	NUMERIC,
	"Adress"	TEXT,
	"Email"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("MemeberID")
);
CREATE TABLE IF NOT EXISTS "Room" (
	"Room#"	INTEGER NOT NULL,
	"Capacity"	INTEGER,
	"Time"	NUMERIC NOT NULL,
	PRIMARY KEY("Room#")
);
CREATE TABLE IF NOT EXISTS "Facility" (
	"Adress"	TEXT NOT NULL,
	"Phone"	NUMERIC,
	"FacilityID"	INTEGER NOT NULL,
	PRIMARY KEY("FacilityID"),
	FOREIGN KEY("FacilityID") REFERENCES "Course"("CourseID")
);
CREATE TABLE IF NOT EXISTS "CourseType" (
	"TypeID"	TEXT NOT NULL,
	PRIMARY KEY("TypeID"),
	FOREIGN KEY("TypeID") REFERENCES "Course"("CourseID")
);
CREATE TABLE IF NOT EXISTS "Instructor" (
	"InstructorID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Phone#"	NUMERIC,
	PRIMARY KEY("InstructorID"),
	FOREIGN KEY("InstructorID") REFERENCES "Course"("CourseID")
);
CREATE TABLE IF NOT EXISTS "Course" (
	"CourseID"	TEXT NOT NULL,
	"CourseName"	TEXT NOT NULL,
	"CourseDescription"	TEXT,
	PRIMARY KEY("CourseID")
);
COMMIT;
