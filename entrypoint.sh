#!/bin/sh

# Si PORT está definido, lo usa para n8n
if [ -n "$PORT" ]; then
  export N8N_PORT="$PORT"
  echo "N8N will start on port $PORT"
else
  echo "PORT variable not defined, using default N8N port."
fi

# Si DATABASE_URL está definida, solo imprime un aviso (no fuerza configuración)
if [ -n "$DATABASE_URL" ]; then
  echo "DATABASE_URL is set, but this script respects DB_TYPE and DB_SQLITE_DATABASE variables."
fi

# Solo arranca n8n, usando las variables de entorno de Render
n8n
