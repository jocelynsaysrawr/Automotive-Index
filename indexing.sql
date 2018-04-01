DROP DATABASE IF EXISTS indexed_cars;
DROP USER IF EXISTS indexed_cars_user;
CREATE USER indexed_cars_user;
CREATE DATABASE indexed_cars;
\c indexed_cars;
\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

--\timing to toggle on timing

SELECT DISTINCT ON (make_title) make_title FROM car_models WHERE make_code = 'LAM'; 
--25.091ms

SELECT DISTINCT ON (model_title) model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--42.229ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--29.730ms

SELECT * FROM car_models WHERE year BETWEEN 2010 and 2015;
--69.780ms

SELECT * FROM car_models WHERE year = 2010;
--36.254ms