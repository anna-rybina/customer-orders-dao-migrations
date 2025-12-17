# Customer Orders DAO with Migrations

### Spring Boot приложение с DAO слоем и миграциями базы данных.

## Технологии
- Java 17
- Spring Boot 3.2.0
- Spring JDBC + Flyway
- PostgreSQL

## Миграции
#### Используется Flyway для управления изменениями БД:
```
src/main/resources/migrations/
├── V1__Create_tables.sql # Создание таблиц
└── V2__Insert_test_data.sql # Тестовые данные
```

## Запуск
#### 1. PostgreSQL в Docker:  
   `docker run --name postgres-dao -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres:15`

#### 2. Запуск приложения:  
   `mvn spring-boot:run`

#### 3. Проверка:  
   `http://localhost:8080/products/fetch-product?name=Alexey`

## Особенности
- DAO слой на Spring JDBC
- Миграции через Flyway
- REST API для доступа к данным