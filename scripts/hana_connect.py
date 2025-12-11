import pandas as pd
import sqlalchemy as sa

# Conexión HANA
engine = sa.create_engine(
    "hana://SYSTEM:TuPassword@localhost:39015"
)

# Cargar CSVs como DataFrames
ventas = pd.concat([
    pd.read_csv("../data/ventas_mex.csv"),
    pd.read_csv("../data/ventas_esp.csv"),
    pd.read_csv("../data/ventas_usa.csv")
])

inventario = pd.concat([
    pd.read_csv("../data/inventario_mex.csv"),
    pd.read_csv("../data/inventario_esp.csv"),
    pd.read_csv("../data/inventario_usa.csv")
])

# Guardar en SAP HANA
ventas.to_sql("ventas", engine, if_exists="append", index=False)
inventario.to_sql("inventario", engine, if_exists="append", index=False)

print("Datos cargados correctamente.")


