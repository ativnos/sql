CREATE TABLE lastlogin
(
s_uid SERIAL PRIMARY KEY,
username TEXT NOT NULL REFERENCES userregistry(username) ON DELETE CASCADE,
tstamp timestamp without time zone default (now() at time zone 'utc'),
unique (username)
);
