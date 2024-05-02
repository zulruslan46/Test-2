SELECT * FROM qa_auto.user_profiles WHERE name LIKE '%am%';

SELECT MAX(totalCost) FROM qa_auto.expenses 
INNER JOIN cars ON cars.id = expenses.carId
INNER JOIN car_brands ON cars.id = expenses.carId
WHERE car_brands.title = 'Audi';
 
SELECT carBrandId AS car_id, COUNT(*) AS count_models
FROM qa_auto.cars
JOIN qa_auto.car_brands ON carBrandId = carBrandId
WHERE title IN ('Audi', 'BMW')
GROUP BY carBrandId;

SELECT car_models.title AS car_model, car_brands.title AS car_brand, COUNT(DISTINCT cars.userId) AS user_count FROM cars
JOIN car_models ON cars.carModelId = car_models.id
JOIN car_brands ON car_models.carBrandId = car_brands.id
GROUP BY car_models.title, car_brands.title;

SELECT name, lastName FROM qa_auto.user_profiles INNER JOIN qa_auto.cars on user_profiles.userId = cars.userId;