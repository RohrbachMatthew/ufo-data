-- Original csv file load

load data local infile 'path_to_original_csv'
into table ufo_sights
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(@datetime, city, state, country, shape, duration_seconds, duration_hours_min, comments, @date_posted, latitude, longitude)
SET datetime = STR_TO_DATE(@datetime, '%m/%d/%Y %H:%i'),
date_posted = STR_TO_DATE(@date_posted, '%m/%d/%Y');

-- datetime format needs to be set to m-d-y