CREATE TABLE jobs
(
j_uid SERIAL PRIMARY KEY,
jobtitle TEXT NOT NULL,
causeids INT[] NOT NULL REFERENCES causesdict(causedid) ON DELETE CASCADE,
skillids INT[] NOT NULL REFERENCES skillsdict(skillsid) ON DELETE CASCADE,
jobdescription TEXT NOT NULL,
username TEXT NOT NULL REFERENCES userregistry(username) ON DELETE CASCADE,
tstamp timestamp without time zone default (now() at time zone 'utc')
);
