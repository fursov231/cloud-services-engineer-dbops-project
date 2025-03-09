# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

Создайте нового пользователя PostgreSQL и выдайте ему права на все таблицы в базе store.

CREATE ROLE migration_service_user WITH LOGIN PASSWORD 'WiwiJL';
GRANT ALL PRIVILEGES ON DATABASE store TO migration_service_user;

запрос, который покажет, какое количество сосисок было продано за каждый день предыдущей недели
