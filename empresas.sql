CREATE TABLE giro_empresarial (
    id_giro_empresarial INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL
);

INSERT INTO
    giro_empresarial (nombre)
VALUES
    ('Alimentación y Bebidas'),
    ('Comercio'),
    ('Salud y Belleza'),
    ('Servicios Profesionales'),
    ('Tecnología y Comunicación'),
    ('Educación'),
    ('Turismo y Hospitalidad'),
    ('Manufactura'),
    ('Construcción e Inmobiliario'),
    ('Financiero'),
    ('Logística y Transporte'),
    ('Entretenimiento y Cultura');

CREATE TABLE subgiro_empresarial (
    id_subgiro INT AUTO_INCREMENT PRIMARY KEY,
    id_giro_empresarial INT NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_giro_empresarial) REFERENCES giro_empresarial(id_giro_empresarial)
);

INSERT INTO
    subgiro_empresarial (id_giro_empresarial, nombre)
VALUES
    (1, 'Restaurantes'),
    (1, 'Cafeterías'),
    (1, 'Bares'),
    (1, 'Panaderías'),
    (1, 'Comida rápida'),
    (2, 'Tiendas de ropa y calzado'),
    (2, 'Supermercados'),
    (2, 'Tiendas de conveniencia'),
    (2, 'Ferreterías'),
    (2, 'Papelerías'),
    (3, 'Farmacias'),
    (3, 'Clínicas y consultorios médicos'),
    (3, 'Estéticas y salones de belleza'),
    (3, 'Spas'),
    (3, 'Gimnasios'),
    (4, 'Consultorías'),
    (4, 'Bufetes de abogados'),
    (4, 'Estudios contables'),
    (4, 'Agencias de publicidad y marketing'),
    (4, 'Despachos de arquitectura'),
    (5, 'Desarrollo de software'),
    (5, 'Soporte técnico'),
    (5, 'Diseño web'),
    (5, 'Agencias de medios'),
    (5, 'Televisión y radio'),
    (6, 'Guarderías'),
    (6, 'Colegios y escuelas privadas'),
    (6, 'Academias de idiomas'),
    (6, 'Centros de capacitación'),
    (6, 'Escuelas de música y arte'),
    (7, 'Hoteles'),
    (7, 'Agencias de viajes'),
    (7, 'Operadores turísticos'),
    (7, 'Parques temáticos'),
    (7, 'Servicios de transporte turístico'),
    (8, 'Textil'),
    (8, 'Alimentos y bebidas'),
    (8, 'Productos químicos'),
    (8, 'Electrónica'),
    (8, 'Automotriz'),
    (9, 'Constructoras'),
    (9, 'Inmobiliarias'),
    (9, 'Empresas de mantenimiento'),
    (9, 'Decoración de interiores'),
    (9, 'Proyectos de urbanización'),
    (10, 'Bancos'),
    (10, 'Casas de cambio'),
    (10, 'Aseguradoras'),
    (10, 'Consultorías financieras'),
    (10, 'Empresas de inversión'),
    (11, 'Empresas de mensajería'),
    (11, 'Transporte de carga'),
    (11, 'Servicios de mudanza'),
    (11, 'Logística y distribución'),
    (11, 'Transporte público y privado'),
    (12, 'Cinemas'),
    (12, 'Teatros'),
    (12, 'Galerías de arte'),
    (12, 'Centros culturales'),
    (12, 'Empresas de eventos y espectáculos');

CREATE TABLE ubicaciones(
    id_ubicacion INT PRIMARY KEY AUTO_INCREMENT,
    ciudad VARCHAR(50),
    sm VARCHAR(25),
    mzn VARCHAR(25),
    lote VARCHAR(10),
    num_interior VARCHAR(10),
    num_exterior VARCHAR(10),
    calle VARCHAR(100),
    postal VARCHAR(5),
    referencia VARCHAR(100)
);

CREATE TABLE empresas(
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    telefono VARCHAR(10),
    email VARCHAR(50),
    logo VARCHAR(500),
    id_giro_empresarial INT,
    id_ubicacion INT,
    FOREIGN KEY(id_giro_empresarial) REFERENCES giro_empresarial(id_giro_empresarial),
    FOREIGN KEY(id_ubicacion) REFERENCES ubicaciones(id_ubicacion)
);
