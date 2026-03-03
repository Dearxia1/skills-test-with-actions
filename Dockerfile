# Usa una imagen base oficial de Python
FROM python:3.13-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos e instálalo
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código fuente
COPY src/ ./src/

# Por defecto, establece el comando a ejecutar
CMD ["python", "src/calculations.py"]
