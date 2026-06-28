#!/bin/bash

# 1. Definir la ruta del archivo .env
ARCHIVO_ENV="env-Ejemplo"

if [ -f $ARCHIVO_ENV ]; then
    mv $ARCHIVO_ENV .env
    ARCHIVO_ENV=".env"
    echo $ARCHIVO_ENV
else
    echo "El archivo no existe."
fi

POSTGRES_PASSWORD=$(openssl rand -hex 30)
sed -i "s|^POSTGRES_PASSWORD=clavesegura|POSTGRES_PASSWORD=$POSTGRES_PASSWORD|g" "$ARCHIVO_ENV"

SECRET_KEY_BASE=$(openssl rand -hex 130)
sed -i "s|^SECRET_KEY_BASE=otraclavesegura|SECRET_KEY_BASE=$SECRET_KEY_BASE|g" "$ARCHIVO_ENV"

OPENPROJECT_SECRET__KEY__BASE=$(openssl rand -hex 130)
sed -i "s|^OPENPROJECT_SECRET__KEY__BASE=otramasymassegura|OPENPROJECT_SECRET__KEY__BASE=$OPENPROJECT_SECRET__KEY__BASE|g" "$ARCHIVO_ENV"

echo "Ahora si, ahi tenes tu .env para laburar"
