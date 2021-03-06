CREATE TABLE userregistry 
(
u_uid SERIAL PRIMARY KEY,
username TEXT NOT NULL UNIQUE,
email TEXT NOT NULL UNIQUE,
passwordhash BYTEA NOT NULL,
salt BYTEA NOT NULL,
firstname TEXT,
lastname TEXT,
summary TEXT,
icareabout TEXT,
imgoodat TEXT,
contactme TEXT,
tstamp timestamp without time zone default (now() at time zone 'utc')
);

