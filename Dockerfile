# Archivo Dockerfile
# Alumno: Emmanuel Cruz
# Matricula: 357615

# Dockerfile----------------------------------------------------------------------
# Pasos por los que debe pasar mi archivo dockerfile

# 1.Usar una imagen base de Python
FROM python:3.9-slim

# 2. Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# 3. Instalar Git en la imagen
RUN apt-get update && apt-get install -y git

# 4. Clonar el repositorio desde GitHub usando HTTPS
RUN git clone https://github.com/EmmanuelCruz24/dockerizando-app.git


# 5. Ejecutar el script dockerizando-app/app.py
CMD ["python", "dockerizando-app/app.py"]
