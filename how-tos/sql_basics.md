## SQL / PostgreSQL
We won't be doing _too_ much with databases in class, but this is always good stuff to know and practice.

### Setup
```
$ brew install postgres
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
$ createdb # create a DB for your user
$ psql # to verify it's working!
psql (9.4.4)
Type "help" for help.

rpearce=#
```
Also, check out [PSequel](http://www.psequel.com/) for a great GUI interface!

### SQL Prompt Commands
Your prompt will look something like this:
```
rpearce=#
```
* `\q` to quit and get back to your bash prompt
* `\l` to view all your databases
* `\connect dbname` to connect to a database
* `\dt` to view data tables when connected
* `\d tablename` to view a table's schema

### Create a database
```sql
CREATE DATABASE mydb;
```

### Drop a database
```sql
DROP DATABASE mydb;
```

### Create an `albums` table
```sql
CREATE TABLE albums (
  id         serial PRIMARY KEY,
  title      varchar(75),
  artist     varchar,
  genre      varchar(50),
  created_at date
);
```
Remember that `serial` is an autoincrementing integer! It is your friend but could also pose as an enemy.

### Drop a table
```sql
DROP TABLE albums;
```

### Insert a row
```sql
INSERT INTO albums (title, artist, genre, created_at)
VALUES ('The Wall', 'Pink Floyd', 'Rock', '2015-07-08');
```

### Update a row
```sql
UPDATE albums
SET length = 152
WHERE id = 6;
```

### SELECT

#### Return only 2 columns
```sql
SELECT (artist, genre)
FROM albums
WHERE title = 'The Wall';
```

#### Return all columns
```sql
SELECT *
FROM albums
WHERE title = 'The Wall';
```

#### Multiple `WHERE` conditions
```sql
SELECT *
FROM albums
WHERE title = 'The Wall'
AND artist = 'Pink Floyd';
```

#### One `OR` the other
```sql
SELECT *
FROM albums
WHERE title = 'The Wall'
OR artist = 'The Wallflowers';
```

#### Where greater or equal to a value
```sql
SELECT (title)
FROM albums
WHERE length >= 62;
```

#### Where does not equal
```sql
SELECT *
FROM albums
WHERE length <> 62;
```
or
```sql
SELECT *
FROM albums
WHERE length != 62;
```

#### Where `LIKE` -- case sensitive
```sql
SELECT *
FROM albums
WHERE genre LIKE '%ock%';
```

#### Where `LIKE` -- case insensitive
```sql
SELECT *
FROM albums
WHERE UPPER(genre) LIKE UPPER('%ro%');
```
or
```sql
SELECT *
FROM albums
WHERE genre ILIKE '%oc%';
```

#### Unique value
```sql
SELECT DISTINCT(genre)
FROM albums
WHERE genre ILIKE '%rock%'
```

### Add a column to a table
```sql
ALTER TABLE albums
ADD COLUMN length int;
```

### Remove a column from a table
```sql
ALTER TABLE albums
DROP COLUMN length;
```

### Load CSV
```sql
COPY albums
FROM '/Users/rpearce/Desktop/albums.csv'
HEADER
DELIMITER ','
CSV;
```

### Export CSV
```sql
COPY (* FROM songs)
TO '/Users/rpearce/Desktop/albums-dump.csv'
HEADER
DELIMITER ','
CSV;
```
