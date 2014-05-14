CREATE TABLE causes
(
c_uid SERIAL PRIMARY KEY,
causeid INT NOT NULL REFERENCES causesdict(itemid) ON DELETE CASCADE,
causename TEXT NOT NULL,
causedescription TEXT,
username TEXT NOT NULL REFERENCES userregistry(username) ON DELETE CASCADE,
tstamp timestamp without time zone default (now() at time zone 'utc'),
unique (username, causeid)
);
CREATE TABLE skills
(
s_uid SERIAL PRIMARY KEY,
skillid INT NOT NULL REFERENCES skillsdict(itemid) ON DELETE CASCADE,
skillname TEXT NOT NULL,
skilldescription TEXT,
username TEXT NOT NULL REFERENCES userregistry(username) ON DELETE CASCADE,
tstamp timestamp without time zone default (now() at time zone 'utc'),
unique (username, skillid)
);
