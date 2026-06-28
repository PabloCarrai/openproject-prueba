#!/bin/bash

# 1. Definir la ruta del archivo .env
ARCHIVO_ENV="env-Ejemplo"
# 2. Defino las variables que se inyectaran con una clave
POSTGRES_PASSWORD=$(openssl rand -hex 30)
SECRET_KEY_BASE=$(openssl rand -hex 130)
OPENPROJECT_SECRET__KEY__BASE=$(openssl rand -hex 130)
#	3. Pruebo si el env-Ejemplo existe, y lo renombre y vuelvo a setear en la variable
if [ -f $ARCHIVO_ENV ]; then
    mv $ARCHIVO_ENV .env
    ARCHIVO_ENV=".env"
else
    echo "El archivo no existe."
fi
#	Sustituyo las variables con su nuevas claves
sed -i "s|^POSTGRES_PASSWORD=clavesegura|POSTGRES_PASSWORD=$POSTGRES_PASSWORD|g" "$ARCHIVO_ENV"
sed -i "s|^SECRET_KEY_BASE=otraclavesegura|SECRET_KEY_BASE=$SECRET_KEY_BASE|g" "$ARCHIVO_ENV"
sed -i "s|^OPENPROJECT_SECRET__KEY__BASE=otramasymassegura|OPENPROJECT_SECRET__KEY__BASE=$OPENPROJECT_SECRET__KEY__BASE|g" "$ARCHIVO_ENV"

echo "Ahora si, ahi tenes tu .env para laburar"

