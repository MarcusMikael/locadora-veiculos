-- Deletando clientes que não possui locação.
DELETE FROM clientes
WHERE id_cliente IN (11, 12);
