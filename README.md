# openproject-prueba
Estamos investigando openproject como gestor de proyecto de investigacion. 

## 🚀 Instrucciones de Instalación y Despliegue

Sigue estos pasos para clonar el repositorio, configurar los directorios necesarios con los permisos correctos y levantar el entorno:

```bash
# 1. Clonar el repositorio e ingresar al directorio
git clone [https://github.com/PabloCarrai/openproject-prueba.git](https://github.com/PabloCarrai/openproject-prueba.git)
cd openproject-prueba

# 2. Crear los directorios para persistencia de datos y assets
mkdir -p ./data/postgres ./data/assets

# 3. Asignar los permisos correctos al directorio de datos (Usuario 1000:1000)
sudo chown -R 1000:1000 ./data

# 4. Levantar los contenedores en segundo plano (detached mode)
docker-compose up -d db

# 5. Aguardo a que la db levante como corresponde
sleep 20

# 6. Levantar los contenedores restantes
docker-compose up -d
