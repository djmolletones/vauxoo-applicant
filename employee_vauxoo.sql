-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
  id serial,
  first_name varchar(80),
  last_name varchar(80),
  PRIMARY KEY (id)
);

CREATE TABLE employee_department (
  id serial,
  name varchar(80),
  description varchar(200),
  PRIMARY KEY (id)
);

CREATE TABLE employee_hobby (
  id serial,
  name varchar(80),
  description varchar(200)
);

INSERT INTO employee (first_name, last_name) VALUES ('Juan', 'Santiago');
INSERT INTO employee (first_name, last_name) VALUES ('Mariana', 'Lozada');
INSERT INTO employee (first_name, last_name) VALUES ('Daniel', 'Ruiz');
INSERT INTO employee (first_name, last_name) VALUES ('Angela', 'Marin');

INSERT INTO employee_department (name, description) VALUES ('Finanzas', 'Control de gastos de la empresa');
INSERT INTO employee_department (name, description) VALUES ('Mantenimiento', 'Vela por el cuidado de las instalaciones');
INSERT INTO employee_department (name, description) VALUES ('Informatica', 'Soporte a todos los sistemas de Computo de la empresa');
INSERT INTO employee_department (name, description) VALUES ('Personal', 'Gestión del Recurso Humano');
INSERT INTO employee_department (name, description) VALUES ('Seguridad', 'Vela por la seguridad de los bienes y personal');
INSERT INTO employee_department (name, description) VALUES ('Legal', 'Encargado de todos los asuntos legales de la empresa');

ALTER TABLE employee ADD id_departmet int;
ALTER TABLE employee ADD FOREIGN KEY(id_departmet) REFERENCES employee_department(id)

UPDATE employee SET id_departmet = 3 WHERE id = 1
UPDATE employee SET id_departmet = 3 WHERE id = 2
UPDATE employee SET id_departmet = 6 WHERE id = 3
UPDATE employee SET id_departmet = 2 WHERE id = 4

-- ...
