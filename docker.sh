docker rm ServerOne -f
docker build -t chaitu .
docker run -itd -p 8080:3000 --name=ServerOne -h ServerOne chaitu