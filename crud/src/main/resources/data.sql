DROP TABLE IF EXISTS USUARIOS;
DROP TABLE IF EXISTS ROLES;
DROP TABLE IF EXISTS TAREAS;
DROP TABLE IF EXISTS ESTADOS_TAREA;

CREATE TABLE ROLES(
    ID_ROL NUMERIC AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(100)
);

CREATE TABLE USUARIOS (
    ID_USUARIO NUMERIC AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(255) NOT NULL,
    MAIL VARCHAR(255) NOT NULL,
    USERNAME VARCHAR(255) NOT NULL,
    PASSWORD VARCHAR(255) NOT NULL,
    ID_ROL NUMERIC,
    FOREIGN KEY (ID_ROL) REFERENCES ROLES(ID_ROL)
);

CREATE TABLE ESTADOS_TAREA(
    ID_ESTADO NUMERIC AUTO_INCREMENT PRIMARY KEY,
    NOMBRE_ESTADO VARCHAR(100) NOT NULL
);

CREATE TABLE TAREAS(
    ID NUMERIC AUTO_INCREMENT PRIMARY KEY,
    NOMBRE_TAREA VARCHAR(255) NOT NULL,
    NUMERO_TAREA NUMERIC AUTO_INCREMENT(1000),
    ID_ESTADO INT,
    FOREIGN KEY (ID_ESTADO) REFERENCES ESTADOS_TAREA(ID_ESTADO)
);



INSERT INTO ROLES (NOMBRE) VALUES ('ADMIN');
INSERT INTO ROLES (NOMBRE) VALUES ('GENERAL');
INSERT INTO usuarios (nombre, mail, username, password, id_rol) VALUES ('Jose Perez', 'jperez@nuevaspa.com', 'jp23112', '$2a$10$DlZCnMDdhcTMAHMHx7ugHe8s5pem2Vva7dAPsZPyn9yNt/9OELSOW', 1);
INSERT INTO usuarios (nombre, mail, username, password, id_rol) VALUES ('Juan Soto', 'jsoto@nuevaspa.com', 'js27133', '$2a$10$M0mpYyFU2X9h3d7D/OjoSOz6j32sfLMn3WUG07A2pIFzOz/fcvu6q', 2);
INSERT INTO usuarios (nombre, mail, username, password, id_rol) VALUES ('Julio Stark', 'jstark@nuevaspa.com', 'js36823', '$2a$10$M0mpYyFU2X9h3d7D/OjoSOz6j32sfLMn3WUG07A2pIFzOz/fcvu6q', 2);
INSERT INTO usuarios (nombre, mail, username, password, id_rol) VALUES ('Lucas Millan', 'lmillan@nuevaspa.com', 'jm11293', '$2a$10$M0mpYyFU2X9h3d7D/OjoSOz6j32sfLMn3WUG07A2pIFzOz/fcvu6q', 2);
INSERT INTO usuarios (nombre, mail, username, password, id_rol) VALUES ('Albert Feliciano', 'afeliciano@nuevaspa.com', 'af23132', '$2a$10$M0mpYyFU2X9h3d7D/OjoSOz6j32sfLMn3WUG07A2pIFzOz/fcvu6q', 2);
INSERT INTO estados_tarea (NOMBRE_ESTADO) VALUES ('SIN EMPEZAR');
INSERT INTO estados_tarea (NOMBRE_ESTADO) VALUES ('EN EJECUCION');
INSERT INTO estados_tarea (NOMBRE_ESTADO) VALUES ('EN PAUSA');
INSERT INTO estados_tarea (NOMBRE_ESTADO) VALUES ('COMPLETADA');
INSERT INTO estados_tarea (NOMBRE_ESTADO) VALUES ('CANCELADA');
INSERT INTO tareas (NOMBRE_TAREA, ID_ESTADO) VALUES ('Crear WS', 3 );
INSERT INTO tareas (NOMBRE_TAREA, ID_ESTADO) VALUES ('Actualizar WS', 2);
INSERT INTO tareas (NOMBRE_TAREA, ID_ESTADO) VALUES ('Crear Api', 4);
INSERT INTO tareas (NOMBRE_TAREA, ID_ESTADO) VALUES ('Eliminar vulnerabilidades', 5);
