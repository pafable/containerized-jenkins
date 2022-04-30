CONTAINER_NAME = <your container name>
IMAGE_NAME = <your container image name>


build:	
		docker network create ${CONTAINER_NAME}
		docker volume create ${CONTAINER_NAME}-controller
		docker build -t ${IMAGE_NAME} dockerfiles


destroy:
		-docker rm -f ${CONTAINER_NAME}-controller
		-docker rmi ${IMAGE_NAME}
		-docker network rm ${CONTAINER_NAME}
		-docker volume rm ${CONTAINER_NAME}-controller
		

run:
	docker run \
		--name ${CONTAINER_NAME}-controller \
		--hostname ${CONTAINER_NAME}-controller \
		--detach \
		--network ${CONTAINER_NAME} \
		--publish 8080:8080 \
		--publish 50000:50000 \
		--volume ${CONTAINER_NAME}-controller:/var/jenkins_home \
		--restart always \
		--env JENKINS_ADMIN=${jenkinsAdmin} \
		--env JENKINS_ADMIN_PW=${jenkinsAdminPw} \
		${IMAGE_NAME}
	docker logs -f ${CONTAINER_NAME}-controller