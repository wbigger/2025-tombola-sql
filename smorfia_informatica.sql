-- ============================================
-- TOMBOLA SQL - LA SMORFIA INFORMATICA
-- Database di riferimento
-- ============================================

DROP TABLE IF EXISTS eventi;
DROP TABLE IF EXISTS simboli;
DROP TABLE IF EXISTS categorie;

-- Tabella CATEGORIE
CREATE TABLE categorie (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

INSERT INTO categorie (id, nome) VALUES
(1, 'Hardware'),
(2, 'Software'),
(3, 'Rete'),
(4, 'Sicurezza'),
(5, 'Database'),
(6, 'Programmazione'),
(7, 'Web'),
(8, 'Sistema'),
(9, 'Storage');

-- Tabella SIMBOLI
CREATE TABLE simboli (
    numero INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    categoria_id INT NOT NULL,
    livello INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorie(id)
);

INSERT INTO simboli (numero, nome, categoria_id, livello) VALUES
(1, 'Il Bit', 6, 1),
(2, 'Il Byte', 6, 1),
(3, 'La USB', 1, 2),
(4, 'Il Monitor', 1, 2),
(5, 'La Tastiera', 1, 1),
(6, 'Il Mouse', 1, 1),
(7, 'La CPU', 1, 3),
(8, 'La RAM', 1, 3),
(9, 'Il Disco SSD', 9, 3),
(10, 'Il Router', 3, 2),
(11, 'Lo Switch', 3, 2),
(12, 'Il Firewall', 4, 4),
(13, 'Il Bug', 6, 2),
(14, 'Il Virus', 4, 3),
(15, 'Il Backup', 9, 2),
(16, 'Il Cloud', 9, 3),
(17, 'Il Server', 3, 4),
(18, 'Il Client', 3, 2),
(19, 'La Query', 5, 2),
(20, 'La Tabella', 5, 1),
(21, 'Il Record', 5, 1),
(22, 'Il Campo', 5, 1),
(23, 'La Chiave Primaria', 5, 3),
(24, 'La Foreign Key', 5, 3),
(25, 'Il JOIN', 5, 4),
(26, 'La SELECT', 5, 2),
(27, 'Il WHERE', 5, 2),
(28, 'Il GROUP BY', 5, 4),
(29, 'La Variabile', 6, 1),
(30, 'La Funzione', 6, 2),
(31, 'Il Ciclo For', 6, 2),
(32, 'Il While', 6, 2),
(33, 'L\'Array', 6, 3),
(34, 'La Stringa', 6, 1),
(35, 'Il Puntatore', 6, 5),
(36, 'La Classe', 6, 4),
(37, 'L\'Oggetto', 6, 3),
(38, 'Il Metodo', 6, 3),
(39, 'L\'Ereditarietà', 6, 5),
(40, 'Il Polimorfismo', 6, 5),
(41, 'HTML', 7, 1),
(42, 'CSS', 7, 2),
(43, 'JavaScript', 7, 3),
(44, 'Il Browser', 7, 1),
(45, 'Il Cookie', 7, 2),
(46, 'La Session', 7, 3),
(47, 'L\'API', 7, 4),
(48, 'Il JSON', 7, 3),
(49, 'Il Dominio', 7, 2),
(50, 'L\'URL', 7, 1),
(51, 'Il Protocollo HTTP', 3, 3),
(52, 'Il DNS', 3, 4),
(53, 'L\'IP Address', 3, 2),
(54, 'La Subnet Mask', 3, 4),
(55, 'Il Gateway', 3, 3),
(56, 'Il DHCP', 3, 3),
(57, 'La VLAN', 3, 5),
(58, 'Il NAT', 3, 4),
(59, 'La VPN', 4, 4),
(60, 'La Crittografia', 4, 4),
(61, 'L\'Hash', 4, 3),
(62, 'Il Certificato SSL', 4, 4),
(63, 'La Password', 4, 1),
(64, 'Il Token', 4, 3),
(65, 'L\'Autenticazione', 4, 2),
(66, 'Il Malware', 4, 3),
(67, 'Il Phishing', 4, 2),
(68, 'Lo Spam', 4, 1),
(69, 'Il Sistema Operativo', 8, 2),
(70, 'Il Kernel', 8, 5),
(71, 'Il Processo', 8, 3),
(72, 'Il Thread', 8, 4),
(73, 'La Memoria Virtuale', 8, 5),
(74, 'Il File System', 8, 3),
(75, 'Il Driver', 8, 3),
(76, 'Il BIOS', 8, 4),
(77, 'Il Boot', 8, 2),
(78, 'Il Terminale', 8, 2),
(79, 'Il Log', 8, 2),
(80, 'La GPU', 1, 4),
(81, 'La Scheda Madre', 1, 3),
(82, 'L\'Alimentatore', 1, 2),
(83, 'Il Case', 1, 1),
(84, 'La Ventola', 1, 1),
(85, 'Il RAID', 9, 5),
(86, 'Il NAS', 9, 4),
(87, 'L\'Hard Disk', 9, 2),
(88, 'La Partizione', 9, 3),
(89, 'Il Compilatore', 2, 4),
(90, 'L\'IDE', 2, 2);

-- Tabella EVENTI
CREATE TABLE eventi (
    id INT PRIMARY KEY,
    simbolo_numero INT NOT NULL,
    mese INT NOT NULL,
    impatto INT NOT NULL,
    FOREIGN KEY (simbolo_numero) REFERENCES simboli(numero)
);

INSERT INTO eventi (id, simbolo_numero, mese, impatto) VALUES
(1, 13, 1, 5),
(2, 14, 1, 3),
(3, 13, 2, 7),
(4, 66, 2, 4),
(5, 15, 3, 12),
(6, 13, 3, 6),
(7, 67, 4, 8),
(8, 68, 4, 15),
(9, 14, 5, 2),
(10, 13, 5, 9),
(11, 15, 6, 20),
(12, 66, 6, 5),
(13, 67, 7, 11),
(14, 14, 7, 4),
(15, 13, 8, 3),
(16, 68, 8, 22),
(17, 15, 9, 18),
(18, 66, 9, 7),
(19, 13, 10, 8),
(20, 14, 10, 6),
(21, 67, 11, 14),
(22, 68, 11, 19),
(23, 15, 12, 25),
(24, 13, 12, 4);
