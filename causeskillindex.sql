CREATE TABLE causesdict
(
cd_uid SERIAL PRIMARY KEY,
itemid INT NOT NULL UNIQUE,
itemnames TEXT[] NOT NULL,
itemdescription TEXT
);
CREATE TABLE skillsdict
(
sd_uid SERIAL PRIMARY KEY,
itemid INT NOT NULL UNIQUE,
itemnames TEXT[] NOT NULL,
itemdescription TEXT
);
