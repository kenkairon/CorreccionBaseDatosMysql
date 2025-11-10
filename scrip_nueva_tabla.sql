CREATE TABLE IF NOT EXISTS usuario(
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) UNIQUE NOT NULL,
    contraseña_hash VARCHAR(64) NOT NULL,
    rol ENUM('empleado', 'administrador') NOT NULL,
    email VARCHAR(100) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS consulta_indicador(
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    nombre_indicador VARCHAR(100) NOT NULL,
    fecha_valor DATE NOT NULL,
    fecha_consulta DATE NOT NULL,
    id_usuario INT NOT NULL,
    nombre_usuario VARCHAR(50) NOT NULL,
    sitio_proveedor VARCHAR(200) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);