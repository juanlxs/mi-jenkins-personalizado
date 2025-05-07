# mi-jenkins-personalizado
- sudo docker build -t mi-jenkins . 
- sudo docker run -d -p 8080:8080 -p 50000:50000 -p 9080:9080 --name jenkins1 mi-jenkins 
- sudo docker start jenkins1
