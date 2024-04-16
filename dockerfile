# Utiliser une image de base légère, comme une version alpine de nginx
FROM nginx:alpine

# Copier les fichiers HTML statiques dans le dossier de serveur web
COPY . /usr/share/nginx/html

# Exposer le port 80 pour accéder au serveur web
EXPOSE 80
