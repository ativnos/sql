CREATE TABLE causes
(
uid SERIAL PRIMARY KEY,
id INT NOT NULL REFERENCES causesdict(itemid) ON DELETE CASCADE,
iname TEXT NOT NULL,
description TEXT,
username TEXT NOT NULL REFERENCES userregistry(username) ON DELETE CASCADE,
tstamp timestamp without time zone default (now() at time zone 'utc'),
unique (username, id)
);
CREATE TABLE skills
(
uid SERIAL PRIMARY KEY,
id INT NOT NULL REFERENCES skillsdict(itemid) ON DELETE CASCADE,
iname TEXT NOT NULL,
description TEXT,
username TEXT NOT NULL REFERENCES userregistry(username) ON DELETE CASCADE,
tstamp timestamp without time zone default (now() at time zone 'utc'),
unique (username, id)
);
