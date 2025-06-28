CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(100), email VARCHAR(120) UNIQUE, password_hash VARCHAR(255), role VARCHAR(20), phone VARCHAR(16));
CREATE TABLE rooms (id SERIAL PRIMARY KEY, name VARCHAR(100), description TEXT, capacity INT);
CREATE TABLE bookings (id SERIAL PRIMARY KEY, user_id INT, room_id INT, start_time TIMESTAMP, end_time TIMESTAMP, status VARCHAR(32), payment_id INT);
CREATE TABLE attendance (id SERIAL PRIMARY KEY, booking_id INT, user_id INT, attended BOOLEAN);
CREATE TABLE payments (id SERIAL PRIMARY KEY, user_id INT, booking_id INT, amount NUMERIC, status VARCHAR(24), created_at TIMESTAMP);
