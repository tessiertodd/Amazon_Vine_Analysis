-- Deliverable 2 - Q1
-- filter for records with 20 or more votes
SELECT * FROM vine_table
WHERE total_votes >= 20;

-- filter for records with 20 or more votes and create table called vine20
CREATE TABLE vine20 AS
SELECT * FROM vine_table
WHERE total_votes >= 20;


-- Deliverable 2 - Q2
-- filter for helpful_votes/total_votes greater of equal to 50%
SELECT * FROM vine20
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT)>=0.5;

-- filter for helpful_votes/total_votes greater of equal to 50% create table called votes50
CREATE TABLE votes50 AS
SELECT * FROM vine20
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT)>=0.5;3


-- Deliverable 2 - Q3
-- filter for where vine review program was paid for
SELECT * FROM votes50
WHERE vine='Y';

-- filter for where vine review program was paid for create table vine_paid
CREATE TABLE vine_paid AS
SELECT * FROM votes50
WHERE vine='Y';


-- Deliverable 2 - Q4
-- filter for where vine review program was not paid for
SELECT * FROM votes50
WHERE vine='N';

-- filter for where vine review program was not paid for create table vine_unpaid
CREATE TABLE vine_unpaid AS
SELECT * FROM votes50
WHERE vine='N';


-- Deliverable 2 - Q5
-- % of 5 star review in vine_paid
SELECT
	COUNT(*) FILTER (WHERE star_rating>=5) AS high,
	COUNT(*) AS total,
	(COUNT(*) FILTER (WHERE star_rating>=5))/(COUNT(*)+.0)*100 AS percent_of_total
FROM vine_paid;

-- % of 5 star review in vine_unpaid
SELECT
	COUNT(*) FILTER (WHERE star_rating>=5) AS high,
	COUNT(*) AS total,
	(COUNT(*) FILTER (WHERE star_rating>=5))/(COUNT(*)+.0)*100 AS percent_of_total
FROM vine_unpaid;

