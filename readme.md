# Containerized Jenkins

## Introduction
The objective of this is to test the viability of running Jenkins in a container.
The base container uses jenkins/jenkins:latest.

## Setup
1. Create 2 environment variables for the Jenkins admin user and password.
- `jenkinsAdmin`
- `jenkinsAdminPw`
- `CONTAINER_NAME`
- `IMAGE_NAME`

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
k8s-deploy
```