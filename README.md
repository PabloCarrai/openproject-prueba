# openproject-prueba
Estamos investigando openproject como gestor de proyecto de investigacion. 

## 🚀 Instrucciones de Instalación y Despliegue

Sigue estos pasos para clonar el repositorio, configurar los directorios necesarios con los permisos correctos y levantar el entorno:

```bash
# 1. Clonar el repositorio e ingresar al directorio
git clone https://github.com/PabloCarrai/openproject-prueba.git

# 2 Ingresa a la carpeta del proyecto
cd openproject-prueba

# 3. Crear los directorios para persistencia de datos y assets
mkdir -p ./data/postgres ./data/assets

# 4. Asignar los permisos correctos al directorio de datos (Usuario 1000:1000)
sudo chown -R 1000:1000 ./data

# 5. Levantar los contenedores en segundo plano (detached mode)
docker-compose up -d db

# 6. Aguardo a que la db levante como corresponde
sleep 20

# 7. Levantar los contenedores restantes
docker-compose up -d
