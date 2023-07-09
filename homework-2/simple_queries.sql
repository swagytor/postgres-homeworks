-- Напишите запросы, которые выводят следующую информацию:
-- 1. "имя контакта" и "город" (contact_name, country) из таблицы customers (только эти две колонки)
SELECT contact_name, country
FROM customers

-- 2. идентификатор заказа и разницу между датами формирования (order_date) заказа и его отгрузкой (shipped_date) из таблицы orders
SELECT order_id, shipped_date - order_date
FROM orders

-- 3. все города без повторов, в которых зарегистрированы заказчики (customers)
SELECT distinct city
FROM customers
WHERE address is NOT NULL

-- 4. количество заказов (таблица orders)
SELECT count(order_id)
FROM orders


-- 5. количество стран, в которые отгружался товар (таблица orders, колонка ship_country)
SELECT count(distinct ship_country)
FROM orders