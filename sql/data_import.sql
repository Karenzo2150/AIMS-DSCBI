
-- LOAD DATA FROM CSV FILES
<<<<<<< HEAD
COPY cells FROM 'D:/Documents/AIMS_DSCBI_Training/AIMS-DSCBI/data/cells.csv' DELIMITER ',' CSV HEADER;
COPY pop FROM 'D:/Documents/AIMS_DSCBI_Training/AIMS-DSCBI/data/population.csv' DELIMITER ',' CSV HEADER;
COPY ntl_annual FROM 'D:/Documents/AIMS_DSCBI_Training/AIMS-DSCBI/data/ntl-annual-2012-2024.csv' DELIMITER ',' CSV HEADER;
\copy ntl_monthly(cell_id, ntl_min, ntl_max, ntl_mean, ntl_median, ntl_sum,
                  pixel_count, raster_filename, year, month, date)
FROM 'D:/Documents/AIMS_DSCBI_Training/AIMS-DSCBI/data/merged-zonal-stats-2012-2024.csv'
=======
COPY cells FROM '/Users/dmatekenya/My Drive (dmatekenya@gmail.com)/TEACHING/AIMS-DSCBI/data/tmp-db-data/cells.csv' DELIMITER ',' CSV HEADER;

COPY pop(cell_id, elderly_60, children_under5, youth_15_24, general_pop, men_2020, women_2020, building_count)
FROM '/Users/dmatekenya/My Drive (dmatekenya@gmail.com)/TEACHING/AIMS-DSCBI/data/tmp-db-data/population.csv'
>>>>>>> 8cbf8b3297df735a44dffd796568e68066ff2861
CSV HEADER;

COPY ntl_annual (cell_id, ntl_min, ntl_max, ntl_mean, ntl_median, ntl_sum,
                  pixel_count, raster_filename, year)
FROM '/Users/dmatekenya/My Drive (dmatekenya@gmail.com)/TEACHING/AIMS-DSCBI/data/tmp-db-data/ntl-annual-2012-2024.csv' 
DELIMITER ',' CSV HEADER;

\COPY ntl_monthly(cell_id, ntl_min, ntl_max, ntl_mean, ntl_median, ntl_sum,
                  pixel_count, raster_filename, year, month, date)
FROM '/Users/dmatekenya/My Drive (dmatekenya@gmail.com)/TEACHING/AIMS-DSCBI/data/tmp-db-data/ntl-monthly-2012-2024.csv'
CSV HEADER;
