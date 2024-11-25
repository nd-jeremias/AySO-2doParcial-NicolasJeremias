# Crear las carpetas dentro del repositorio
mkdir docker2doParcial/appHomeBanking

# Dentro colocar dos archivos de ejemplo: index.html y contacto.html

# Crear un archivo dockerfile con la informacion necesaria en la carpeta docker2doParcial
vim dockerfile
# Dentro colocar:
#	FROM nginx
#	COPY appHomeBanking /usr/share/nginx/html

# Nos loggeamos en docker
docker login -u ndjeremias
# Luego colocar la pass

# Crear la img de docker
docker build -t ndjeremias/2parcial-ayso:v1.0 .

# Subir la img al hub
docker push ndjeremias/2parcial-ayso:v1.0

# Desplegar la aplicacion:
docker run -d -p 8080:80 ndjeremias/2parcial-ayso:v1.0

# Ver los container activos
docker container ls

# Podemos entrar desde el navegador:
192.168.56.3:8080/index.html
192.168.56.3:8080/contacto.html

# Direccion Docker Hub https://hub.docker.com/repository/docker/ndjeremias/2parcial-ayso/general
