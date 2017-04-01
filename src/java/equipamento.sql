CREATE TABLE equipamento
(
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    serie VARCHAR(100) NOT NULL,
    local VARCHAR(250) NOT NULL,
    descricao VARCHAR(32672) NOT NULL,
    estado INT NOT NULL DEFAULT 0
);

--INSERT INTO equipamento(serie, local, descricao, estado) VALUES('ABC4874', 'predio 1', 'computador', 0)