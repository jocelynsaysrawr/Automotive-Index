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

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM'; --25.091ms
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R'; --42.229ms
SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM'; --29.730ms
SELECT * FROM car_models WHERE year BETWEEN 2010 and 2015; --69.780ms
SELECT * FROM car_models WHERE year = 2010; --36.254ms


--CREATE INDEX make_code_index ON car_models (make_code);
--CREATE INDEX year_index ON car_models (year);
--CREATE INDEX model_code_index ON car_models (model_code);
--CREATE INDEX make_and_model_code_index ON car_models (make_code, model_code);


SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM'; --7.511ms
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R'; --2.339ms
SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM'; --3.936ms
SELECT * FROM car_models WHERE year BETWEEN 2010 and 2015; -- 91.347ms
SELECT * FROM car_models WHERE year = 2010; --19.961ms