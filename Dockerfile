# Usa la imagen oficial de Jenkins como base
FROM jenkins/jenkins:latest

# Establece el usuario a root (como lo hiciste con la opción -u root)
USER root

# Configura el puerto por defecto en el que Jenkins escuchará
ENV JENKINS_OPTS="--httpPort=9080"

# Expone los puertos necesarios
EXPOSE 8080
EXPOSE 50000
EXPOSE 9080

# Monta el volumen en el contenedor para la persistencia de datos
COPY ./mi-jenkins-personalizado/jenkins_home /var/jenkins_home

# El contenedor se ejecutará en modo foreground, pero puedes configurar el puerto HTTP a 9080
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war", "--httpPort=9080"]
