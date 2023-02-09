CREATE OR REPLACE FUNCTION conta_clientes_por_dia(var_data date)
RETURNS INTEGER AS $$
DECLARE
  total_de_clientes INTEGER;
BEGIN
  SELECT COUNT(*) INTO total_de_clientes
  FROM clientes
  WHERE data_registro = var_data;

  RETURN total_de_clientes;
END;
$$ LANGUAGE plpgsql;
