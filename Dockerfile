
# Comandos
# FROM = imagen:version
# COPY/ADD = copiar archivos desde el source a la imagen
# RUN = Ejecutar comandos de consola 
# ENTRYPOINT/CMD = Lo que el contenedor va a ejecutar (1 por imagen)

# Configuracion
# ENV = Variables de ambiente y se usan en el contenedor
# ARG = Variables de ambiente que se usan en la construcción de la imagen
# WORKDIR = Directorio de trabajo /app
# EXPOSE = expone un puerto (se pueden usar varios)
# VOLUME = Para definir rutas que se compartirán con el sistema



FROM gradle:latest

ARG OUTPUT

VOLUME ${OUTPUT}:/app/release

ENV ANDROID_HOME "/sdk"

VOLUME ${ANDROID_SDK}:/sdk

WORKDIR /app

COPY . .

RUN ./gradlew build