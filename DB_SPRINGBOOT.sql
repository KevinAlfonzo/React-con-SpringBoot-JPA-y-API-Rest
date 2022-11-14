-- Creación de la tabla - EMPLEADO
CREATE TABLE EMPLEADO (
    ID integer PRIMARY KEY,
    Nombre varchar2(45)  NOT NULL,
    Apellido varchar2(45)  NOT NULL,
    Email varchar2(45)  NOT NULL,
    Celular char(9)  NOT NULL,
    Estado char(1)  NOT NULL
) ;

--Creación de secuencia de Empleado
CREATE SEQUENCE ID_EMPLEADO START WITH 1 INCREMENT BY 1 ORDER;

-- Crea o remplaza al Trigger activo en este caso Empleado :
CREATE OR REPLACE TRIGGER ID_EMPLEADO BEFORE INSERT ON EMPLEADO FOR EACH ROW BEGIN SELECT ID_EMPLEADO.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
/

--Inserción de datos de : Empleados
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Hugo', 'Suarez Medina', 'hugo.medina@ooutlook.com', '936296570', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Nicolas', 'Casas Perez', 'nicolas.casas@gmail.com', '911000411', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Joel', 'Gonzales Sanchez', 'joel_sanchez@yahoo.com', '921893013', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Pedro', 'Saenz Rodriguez', 'pedro_rodri@hotmail.com', '922652686', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Diego', 'Gutierrez Venturo', 'diegoventuro@gmail.com', '966729376', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('George', 'Guerra Lopez', 'george..guerra@outlook.com', '933067766', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Piero', 'Yactayo Mendoza', 'piero-mendoza@yahoo.com', '945220596', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Alex', 'Villanueva Medrano', 'alex.medrano@hotmail.com', '991102507', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Alexander', 'Garay Levano', 'alexander.garay@gmail.com', '916922038', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Victor', 'Porta Reynoso', 'victor_reynoso@yahoo.com', '976607612', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Alisson', 'Acuña Candela', 'Alisson23@gmail.com', '966310150', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Valeria', 'Vivanco Alcala', 'Valerie_ADC@hotmail.com', '905223438', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Alberto', 'Diaz Sulca', 'Alberto_diaoutlook.com', '977749646', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Naomi', 'Tello Lozano', 'NaomiJuan@gmail.com', '926032710', 'A');
INSERT INTO EMPLEADO (Nombre, Apellido, Email, Celular, Estado) VALUES ('Sandra', 'Rueda Barrios', 'Sandrita342@hotmail.com', '914703422', 'A');