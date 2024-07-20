# VISIONA - Servicio de Predicción de Peligrosidad de Municipios

## Información del Servicio

VISIONA es un servicio de API REST que predice la peligrosidad de municipios basándose en datos demográficos y de accidentes. Utiliza un modelo de machine learning implementado con Flask y puede ser desplegado mediante Docker.

## Requerimientos

- Python 3.9+
- Docker y Docker Compose (para producción)
- Dependencias de Python:
  - Flask
  - pandas
  - joblib
  - scikit-learn

## Instalación

### Usando venv (Desarrollo)

1. Clonar el repositorio:
   ```
   git clone https://github.com/RaguiCastellanos/VISIONA_MODELO_API.git
   cd visiona-proyecto
   ```

2. Crear y activar el entorno virtual:
   ```
   py -3 -m venv .venv
   .venv\Scripts\activate
   ```

3. Instalar dependencias:
   ```
   pip install Flask pandas joblib scikit-learn
   ```

### Usando Docker (Producción)

1. Clonar el repositorio:
   ```
   git clone https://github.com/RaguiCastellanos/VISIONA_MODELO_API.git
   cd visiona-proyecto
   ```

2. Construir y ejecutar con Docker Compose:
   ```
   docker-compose up --build
   ```

## Uso

### Producción

1. Asegurarse de que Docker está en ejecución.
2. Ejecutar:
   ```
   docker-compose up
   ```
3. Acceder a `http://localhost:5000` en el navegador.

### Desarrollo

1. Activar el entorno virtual:
   ```
   .venv\Scripts\activate
   ```
2. Ejecutar la aplicación:
   ```
   python app.py
   ```
3. Acceder a `http://localhost:5000` en el navegador.

## API Endpoints

1. **Página Principal**
   - Método: `GET`
   - URL: `/`
   - Descripción: Muestra el formulario de predicción.

2. **Realizar Predicción**
   - Método: `POST`
   - URL: `/prediction`
   - Datos requeridos:
     ```json
     {
       "id_municipio": "1",
       "habitantes": "10000",
       "accidentes": "50",
       "vic_masculina": "30",
       "vic_femenino": "20"
     }
     ```
   - Respuesta: Página HTML con el resultado.

## Ejemplos

### Ejemplo de uso con cURL

```bash
curl -X POST http://localhost:5000/prediction \
     -H "Content-Type: application/x-www-form-urlencoded" \
     -d "id_municipio=1&habitantes=10000&accidentes=50&vic_masculina=30&vic_femenino=20"
```

## Notas Adicionales

- El archivo `VISIONA.pkl` (modelo entrenado) debe estar en el directorio raíz.
- Para modificar la configuración de Docker, editar `Dockerfile` y `docker-compose.yml`.
- En modo desarrollo, los cambios en el código se reflejan automáticamente.
