-- making database for medical center

DROP DATABASE IF EXISTS medical_center_db;

CREATE DATABASE medical_center_db;

\c medical_center_db

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    phone_number INT NOT NULL
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    phone_number INT NOT NULL
);

CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    date DATE,
    patient_id INT REFERENCES patients,
    doctor_id INT REFERENCES doctors
);

CREATE TABLE diagnosis (
    id SERIAL PRIMARY KEY,
    visit_id INT REFERENCES visits,
    patient_id INT REFERENCES patients,
    doctor_id INT REFERENCES doctors,
    disease TEXT
);