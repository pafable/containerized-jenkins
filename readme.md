# Containerized Jenkins

## Introduction
The objective of this is to test the viability of running Jenkins in a container

## Docker Command
```
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
    --env JAVA_OPTS='-Djenkins.install.runSetupWizard=false' \
    jenkins/jenkins:latest
```