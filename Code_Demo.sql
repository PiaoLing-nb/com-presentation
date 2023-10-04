-----------------------------
-- Drop, create and load data
------------------------------
DROP TABLE IF EXISTS epa_air_quality;
DROP TABLE IF EXISTS epa_site_location;

CREATE TABLE epa_site_location
(
	site_id INTEGER CHECK (site_id > 0),
	site_name VARCHAR NOT NULL,
	site_latitude REAL NOT NULL,
	site_longitude REAL NOT NULL,
	county VARCHAR NOT NULL,
	state VARCHAR NOT NULL,
	PRIMARY KEY (site_id)
);

CREATE TABLE epa_air_quality
(
	date DATE DEFAULT CURRENT_DATE,
	site_id INTEGER CHECK (site_id > 0),
	daily_mean_pm10_concentration REAL NOT NULL,
	daily_aqi_value REAL NOT NULL,
	PRIMARY KEY (date, site_id),
	FOREIGN KEY (site_id) REFERENCES epa_site_location (site_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO epa_site_location VALUES (60070008,	'Chico-East Avenue', 39.76168, -121.84047, 'Butte', 'California');


COPY epa_site_location
FROM '/Users/ronel/Downloads/msdspostgress/2023-msds691-example/Data/epa_site_location.csv'
DELIMITER ','
CSV HEADER;

COPY epa_air_quality
FROM '/Users/ronel/Downloads/msdspostgress/2023-msds691-example/Data/epa_air_quality.csv'
DELIMITER ','
CSV HEADER;

INSERT INTO epa_site_location VALUES (60070001,	'Central Marin', 38.0834, -122.7633, 'Marin', 'California');


 
--- Showing epa_site_location

SELECT * 
FROM epa_site_location l

-- Showing  epa_air_quality

SELECT * 
FROM epa_air_quality a

-- Perform a join / inner join
SELECT * 
FROM epa_site_location l
INNER JOIN epa_air_quality a
 ON l.site_id = a.site_id
 
SELECT * 
FROM epa_site_location l
JOIN epa_air_quality a
 ON l.site_id = a.site_id

 -- Perform left join
SELECT *
FROM epa_site_location
LEFT JOIN epa_air_quality ON epa_site_location.site_id = epa_air_quality.site_id;
 
 -- Perform right join
 
SELECT *
FROM epa_site_location
Right JOIN epa_air_quality ON epa_site_location.site_id = epa_air_quality.site_id;

-- Perform a cross join (may not be helpful here)
SELECT * 
FROM epa_site_location l
CROSS JOIN epa_air_quality a;


-- Performing a full outer join (see null values at the end)
SELECT *
FROM epa_site_location
FULL JOIN epa_air_quality ON epa_site_location.site_id = epa_air_quality.site_id;


--  Checks the column  to see if null
SELECT * FROM epa_site_location AS e
LEFT JOIN epa_air_quality AS a
ON e.site_id = a.site_id
WHERE a.site_id IS NULL
ORDER BY e.site_id;


SELECT *
FROM epa_site_location AS e
FULL JOIN epa_air_quality AS a
ON e.site_id = a.site_id
ORDER BY COALESCE(e.site_id, a.site_id);
