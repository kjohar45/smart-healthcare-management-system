CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    age INTEGER,
    gender VARCHAR(10)
);

CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    availability VARCHAR(50),
    status VARCHAR(20) DEFAULT 'available'
);

CREATE TABLE appointments (
    appointment_id SERIAL PRIMARY KEY,
    user_id INTEGER,
    doctor_id INTEGER,
    appointment_time TIMESTAMP,
    status VARCHAR(50),

    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

