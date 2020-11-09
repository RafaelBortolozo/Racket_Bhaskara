BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "valores" (
	"a"	REAL,
	"b"	REAL,
	"c"	REAL,
	"delta"	REAL,
	"x1"	REAL,
	"x2"	REAL,
	"Vx"	REAL,
	"Vy"	REAL
);
INSERT INTO "valores" ("a","b","c","delta","x1","x2","Vx","Vy") VALUES (1.0,4.0,-5.0,36.0,1.0,-5.0,-2.0,-9.0);
INSERT INTO "valores" ("a","b","c","delta","x1","x2","Vx","Vy") VALUES (1.0,4.0,-5.0,36.0,1.0,-5.0,-2.0,-9.0);
COMMIT;
