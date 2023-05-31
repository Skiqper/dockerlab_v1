CREATE TABLE "person" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar(20) NOT NULL
);

INSERT INTO "person" ("id", "name") VALUES
(1, 'William'),
(2, 'Marc'),
(3, 'John');
