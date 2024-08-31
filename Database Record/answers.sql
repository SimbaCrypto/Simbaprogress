-- Part 2: Creating a database
CREATE DATABASE hospital_db;

-- part 3: Selecting a database
USE hospital_db;

-- creating a patient table
CREATE TABLE patients(
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10),
    language VARCHAR(20) NOT NULL
    );

-- creating a providers table
CREATE TABLE providers( 
provider_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL,
provider_speciality VARCHAR(45) NOT NULL,
email_address VARCHAR(45) NOT NULL,
phone_number VARCHAR(45) NOT NULL,
date_joined DATE NOT NULL
);

-- creating a visits table
CREATE TABLE visits (
  visit_id INT PRIMARY KEY AUTO_INCREMENT,
  patient_id INT,
  provider_id INT,
  date_of_visit DATE NOT NULL,
  date_scheduled DATE NOT NULL,
  visit_department_id INT NOT NULL,
  visit_type VARCHAR(45) NOT NULL,
  blood_pressure_systolic INT,
  blood_pressure_diastolic DECIMAL(5,2),
  pulse DECIMAL(5,2),
  visit_status VARCHAR(45) NOT NULL
);

-- creating a ed_visit table
CREATE TABLE ed_visits (
  ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
  visit_id INT,
  patient_id INT,
  acuity INT NOT NULL,
  reason_for_visit VARCHAR(100) NOT NULL,
  disposition VARCHAR(100) NOT NULL
);

-- creating an admissions table
CREATE TABLE admissions (
admision_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
admission_date DATE,
discharge_date DATE,
discharge_disposition VARCHAR (100) NOT NULL,
service VARCHAR(100) NOT NULL,
primary_diagnosis VARCHAR(100) NOT NULL
);

-- creating a discharge table
CREATE TABLE discharges (
discharge_id INT PRIMARY KEY AUTO_INCREMENT,
admission_id INT,
patient_id INT,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR (100) NOT NULL
);