@echo off
      echo Construyendo la imagen Docker...
      docker-compose build
      
      echo Iniciando el contenedor...
      docker-compose up
      