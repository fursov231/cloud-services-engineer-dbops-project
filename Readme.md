# Проектная работа дисциплины DBOps (Cloud Services Engineer DBOps Project)
Выполнены работы по:

- подготовке базы данных на виртуальной машине с IP 84.201.134.168;
- добавлению шагов в workflow файле для запуска Flyway-миграций в БД с выносом секретов в GitHub;
- анализу структуры таблиц БД интернет-магазина (сосисочной);
- оптимизации структуры с помощью нормализации и индексов в виде Flyway-миграций.

* Для выполнения миграций и автотестов необходимо создать пользователя PostgreSQL и выдать ему права в базе *store*:

```
CREATE USER migration_service_user WITH PASSWORD 'top_secret';
GRANT ALL PRIVILEGES ON DATABASE store TO migration_service_user;
```

* Для просмотра количества сосисок, которые были проданы за каждый день предыдущей недели, выполнить запрос:
```
SELECT o.date_created, SUM(op.quantity)
FROM orders AS o
JOIN order_product AS op ON op.order_id = o.id
WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY'
GROUP BY o.date_created;
```

