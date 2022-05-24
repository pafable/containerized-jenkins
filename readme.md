# Containerized Jenkins

## Introduction
The objective of this is to test the viability of running Jenkins in a container.
The base container uses jenkins/jenkins:latest.

For local testing install docker desktop and enable kubernetes.

## Setup
1. Create 2 environment variables for the Jenkins admin user and password.
- `CONTAINER_NAME`
- `IMAGE_NAME`

In the `k8s` folder edit line 25 (image: pafable/cont-jenkins:0.0.2) and replace the image with your own name.

## Building and Deploying
*Build*
```
make build 
```

*Run*
```
make run
```

*Destroy*
```
make destroy
```

## Deploying to a Kubernetes Cluster
*Deploy*
```
make k8s-deploy
```

*Destroy*
```
make k8s-destroy
```

## TODO
- Setup terraform to deploy k8s
- Deploy to Digital Ocean