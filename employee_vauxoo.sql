-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
CREATE TABLE employee (
  id int,
  first_name varchar(80),
  last_name varchar(80),
  PRIMARY KEY (id)
);
CREATE TABLE employee_department (
  id int,
  name varchar(80),
  description varchar(200),
  PRIMARY KEY (id)
);
CREATE TABLE employee_hobby (
  id int,
  name varchar(80),
  description varchar(200)
);
INSERT INTO employee VALUES (1, 'Juan', 'Santiago');
INSERT INTO employee VALUES (2, 'Mariana', 'Lozada');
INSERT INTO employee VALUES (3, 'Daniel', 'Ruiz');
INSERT INTO employee VALUES (4, 'Angela', 'Marin');
INSERT INTO employee_department VALUES (1, 'Finanzas', 'Control de gastos de la empresa');
INSERT INTO employee_department VALUES (2, 'Mantenimiento', 'Vela por el cuidado de las instalaciones');
INSERT INTO employee_department VALUES (3, 'Informatica', 'Soporte a todos los sistemas de Computo de la empresa');
INSERT INTO employee_department VALUES (4, 'Personal', 'Gestión del Recurso Humano');
INSERT INTO employee_department VALUES (5, 'Seguridad', 'Vela por la seguridad de los bienes y personal');
INSERT INTO employee_department VALUES (6, 'Legal', 'Encargado de todos los asuntos legales de la empresa');

ALTER TABLE employee ADD id_department int;
ALTER TABLE employee ADD FOREIGN KEY(id_department) REFERENCES employee_department(id);

UPDATE employee SET id_department = 3 WHERE id = 1;
UPDATE employee SET id_department = 3 WHERE id = 2;
UPDATE employee SET id_department = 6 WHERE id = 3;
UPDATE employee SET id_department = 2 WHERE id = 4;
-- ...
