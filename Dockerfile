FROM python:3-alpine
WORKDIR /app

# Copie le script dans le conteneur, dans le répertoire /app
COPY my-script.py my-script-image.py

#env & arg
ARG USER
ENV USER=$USER

#healthcheck
HEALTHCHECK --interval=5m --timeout=3s \
  CMD ["python", "my-script.py", "--healthcheck"]

# Exécute le script
CMD ["python", "/app/my-script-image.py"]