--Listar base de datos
SELECT * FROM V$DATABASE;

--Listar usuarios de DBA
SELECT * FROM DBA_USERS;

--Listar TABLESPACES
SELECT * FROM DBA_TABLESPACES;

--Permitir ejecucion de script
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

-- Crear tablespace tbsDemo
CREATE TABLESPACE DB_SPRINGBOOT
DATAFILE 'DB_SPRINGBOOT.dbf'
SIZE 200M;

SELECT  
    DEFAULT_TABLESPACE,
    USERNAME,
    ACCOUNT_STATUS,
    EXPIRY_DATE,
    AUTHENTICATION_TYPE
FROM DBA_USERS
WHERE DEFAULT_TABLESPACE = 'DB_SPRINGBOOT';

-- Crear usuario en TABLESPACE TBSDEMO
CREATE USER DEMO IDENTIFIED BY abc123
DEFAULT TABLESPACE DB_SPRINGBOOT
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON DB_SPRINGBOOT;

/*privilegios de usuario*/
GRANT CREATE SESSION TO DEMO;
GRANT CREATE TABLE TO DEMO;
GRANT CREATE VIEW TO DEMO;
GRANT CREATE PROCEDURE TO DEMO;
GRANT CREATE TRIGGER TO DEMO;
GRANT CREATE SEQUENCE TO DEMO;
GRANT CREATE JOB TO DEMO;
GRANT UNLIMITED TABLESPACE TO DEMO;

/* Permisos que puedo habilitados*/
SELECT * FROM SESSION_PRIVS;