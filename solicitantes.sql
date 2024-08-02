CREATE TABLE nacionalidades(
    id_nacionalidad INT PRIMARY KEY AUTO_INCREMENT,
    nacionalidad VARCHAR(50) NOT NULL
);

INSERT INTO nacionalidades (nacionalidad) 
VALUES
('Mexicana'),
('Extranjera');

CREATE TABLE estados_civiles(
    id_estado_civil INT PRIMARY KEY AUTO_INCREMENT,
    estado_civil VARCHAR(50) NOT NULL
);

INSERT INTO estados_civiles (estado_civil) 
VALUES
('Soltero(a)'),
('Casado(a)'),
('Divorciado(a)'),
('Viudo(a)');

CREATE TABLE tipos_sangre(
    id_tipo_sangre INT PRIMARY KEY AUTO_INCREMENT,
    tipo_sangre VARCHAR(50) NOT NULL
);

INSERT INTO tipos_sangre (tipo_sangre) 
VALUES
('O+'),
('O-'),
('A+'),
('A-'),
('B+'),
('B-'),
('AB+'),
('AB-');

CREATE TABLE solicitantes (
    id_solicitante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    ap_paterno VARCHAR(50) NOT NULL,
    ap_materno VARCHAR(50) NOT NULL,
    fecha_nacimiento VARCHAR(50) NOT NULL,
    CURP VARCHAR(50) NOT NULL UNIQUE,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(50) NOT NULL UNIQUE,
    contrasena VARCHAR(50) NOT NULL,
    genero ENUM('Masculino','Femenino') NOT NULL,
    datos_medicos VARCHAR(500)
    id_nacionalidad INT,
    id_estado_civil INT,
    id_tipo_sangre INT,
    FOREIGN KEY(id_nacionalidad) REFERENCES nacionalidades(id_nacionalidad),
    FOREIGN KEY(id_estado_civil) REFERENCES estados_civiles(id_estado_civil),
    FOREIGN KEY(id_tipo_sangre) REFERENCES tipos_sangre(id_tipo_sangre)
);