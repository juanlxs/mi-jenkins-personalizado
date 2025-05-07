# mi-jenkins-personalizado
- git clone https://github.com/juanlxs/mi-jenkins-personalizado
- sudo docker build -t mi-jenkins . 
- sudo docker run -d -p 8080:8080 -p 50000:50000 -p 9080:9080 --name jenkins1 mi-jenkins
- sudo docker run -d -p 8080:8080 -p 50000:50000 -p 9080:9080 --name jenkins1 -v /home/ciber1/docker/mi-jenkins-personalizado/jenkins_home:/var/jenkins_home mi-jenkins
- sudo chown -R 1000:1000 /home/ciber1/docker/mi-jenkins-personalizado/jenkins_home
- sudo chmod -R 777 /home/ciber1/docker/mi-jenkins-personalizado/jenkins_home
- sudo docker start jenkins1
