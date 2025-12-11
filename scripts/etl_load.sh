# Script de carga ETL
#!/bin/bash

echo "========================================"
echo "   INICIANDO PROCESO ETL EN SAP HANA"
echo "========================================"

# Configura tus credenciales
HOST="localhost:39015"
USER="SYSTEM"
PASS="TuPassword"

echo "▶ Creando tablas..."
hdbsql -n $HOST -u $USER -p $PASS -I ./sql/create_tables.sql

echo "▶ Cargando datos desde CSV..."
hdbsql -n $HOST -u $USER -p $PASS -I ./sql/ingest_load.sql

echo "========================================"
echo "   ETL COMPLETADO CON ÉXITO ✔"
echo "========================================"
