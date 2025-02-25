# Utiliser Python 3.11 slim pour une image légère
FROM python:3.11-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY . /app

# Installer les dépendances depuis requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Définir la variable d'environnement pour Flask
ENV FLASK_APP=crudapp.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Exposer le port 5000 pour Flask
EXPOSE 5000

# Démarrer l'application Flask
CMD ["flask", "run"]

