CARGA DE DATOS DESDE ARCHIVOS CSV
-- Cargar ventas
IMPORT FROM CSV FILE './data/ventas_mex.csv'
INTO ventas
WITH RECORD DELIMITED BY '\n'
FIELD DELIMITED BY ',';

IMPORT FROM CSV FILE './data/ventas_esp.csv'
INTO ventas
WITH RECORD DELIMITED BY '\n'
FIELD DELIMITED BY ',';

IMPORT FROM CSV FILE './data/ventas_usa.csv'
INTO ventas
WITH RECORD DELIMITED BY '\n'
FIELD DELIMITED BY ',';


-- Cargar inventarios
IMPORT FROM CSV FILE './data/inventario_mex.csv'
INTO inventario
WITH RECORD DELIMITED BY '\n'
FIELD DELIMITED BY ',';

IMPORT FROM CSV FILE './data/inventario_esp.csv'
INTO inventario
WITH RECORD DELIMITED BY '\n'
FIELD DELIMITED BY ',';

IMPORT FROM CSV FILE './data/inventario_usa.csv'
INTO inventario
WITH RECORD DELIMITED BY '\n'
FIELD DELIMITED BY ',';

