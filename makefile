build:	
		docker network create jenkins
		docker volume create jenkins-controller
		docker build -t pafable/cont-jenkins:v1 dockerfiles


destroy:
		docker rm -f jenkins-controller
		docker rmi pafable/cont-jenkins:v1
		docker network rm jenkins
		docker volume rm jenkins-controller
		

run:
	docker run \
		--name jenkins-controller \
		--hostname jenkins-controller \
		--detach \
		--network jenkins \
		--publish 8080:8080 \
		--publish 50000:50000 \
		--volume jenkins-controller:/var/jenkins_home \
		--restart always \
		--env PLUGIN_DIR='/var/jenkins_home/plugins' \
		--env JAVA_OPTS='-Djenkins.install.runSetupWizard=false -Djava.awt.headless=true' \
		pafable/cont-jenkins:v1 