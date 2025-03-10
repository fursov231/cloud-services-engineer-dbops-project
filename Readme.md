# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

Создайте нового пользователя PostgreSQL и выдайте ему права на все таблицы в базе store.

CREATE ROLE migration_service_user WITH LOGIN PASSWORD 'WiwiJL';
GRANT ALL PRIVILEGES ON DATABASE store TO migration_service_user;

запрос, который покажет, какое количество сосисок было продано за каждый день предыдущей недели
SELECT o.date_created, SUM(op.quantity)
FROM orders AS o
JOIN order_product AS op ON op.order_id = o.id
WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY'
GROUP BY o.date_created;

