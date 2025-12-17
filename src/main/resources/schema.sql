DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    age INT,
    phone_number VARCHAR(20)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    date DATE,
    customer_id INT,
    product_name VARCHAR(255),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (name, surname, age, phone_number) VALUES
('Alexey', 'Ivanov', 30, '+79161234567'),
('Ivan', 'Petrov', 25, '+79167654321'),
('Maria', 'Sidorova', 35, '+79162345678'),
('Alexey', 'Smirnov', 28, '+79163456789');

INSERT INTO orders (date, customer_id, product_name, amount) VALUES
('2024-01-15', 1, 'Laptop', 1),
('2024-01-20', 2, 'Smartphone', 2),
('2024-01-25', 1, 'Tablet', 1),
('2024-01-30', 3, 'Monitor', 3),
('2024-02-01', 4, 'Keyboard', 5);