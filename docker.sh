docker rm ServerOne -f
docker build -t chaituchowdary/spec .
docker run -itd -p 80:8080 --name=ServerOne -h ServerOne chaituchowdary/spec
