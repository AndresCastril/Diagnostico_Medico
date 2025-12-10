CREATE DATABASE IF NOT EXISTS diagnostico_medico;
USE diagnostico_medico;

-- Tabla de enfermedades
CREATE TABLE enfermedades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    recomendacion VARCHAR(255) NOT NULL
);

-- Tabla de síntomas
CREATE TABLE sintomas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

-- Relación enfermedad-síntoma
CREATE TABLE enfermedad_sintoma (
    enfermedad_id INT,
    sintoma_id INT,
    PRIMARY KEY (enfermedad_id, sintoma_id),
    FOREIGN KEY (enfermedad_id) REFERENCES enfermedades(id),
    FOREIGN KEY (sintoma_id) REFERENCES sintomas(id)
);

-- Tabla de pacientes
CREATE TABLE pacientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL
);

-- Historial de diagnósticos
CREATE TABLE historial_diagnosticos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    paciente_id INT,
    enfermedad_id INT,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id),
    FOREIGN KEY (enfermedad_id) REFERENCES enfermedades(id)
);

-- Síntomas
INSERT INTO sintomas (nombre) VALUES 
('fiebre'), ('tos'), ('dolor_cabeza'), ('dolor_muscular'),
('estornudos'), ('dolor_garganta'), ('sed'), ('cansancio'),
('perdida_peso'), ('perdida_gusto_olfato'), ('erupcion'), ('picazon'),
('nausea'), ('sensibilidad_luz'), ('ojos_lagrimosos'), ('aumento_peso'),
('piel_seca'), ('vomito'), ('diarrea'), ('dolor_abdominal');


-- Enfermedades
INSERT INTO enfermedades (nombre, categoria, recomendacion) VALUES 
('gripe', 'viral', 'Descansar, hidratar, consultar medico'),
('resfriado', 'viral', 'Descansar, hidratar'),
('diabetes', 'cronica', 'Controlar dieta, consultar especialista'),
('covid', 'viral', 'Aislamiento, consultar medico'),
('varicela', 'viral', 'Descansar, evitar rascar lesiones'),
('migrana', 'cronica', 'Descansar, evitar luz intensa'),
('alergia', 'alergia', 'Evitar alergenos, antihistaminicos'),
('hipotiroidismo', 'cronica', 'Control medico y medicacion'),
('gastroenteritis', 'viral', 'Hidratacion, dieta ligera'),
('faringitis', 'viral/bacteriana', 'Consultar medico');