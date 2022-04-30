# Containerized Jenkins

## Introduction
The objective of this is to test the viability of running Jenkins in a container.
The base container uses jenkins/jenkins:latest.

## Setup
1. Create 2 environment variables for the Jenkins admin user and password.
- `jenkinsAdmin`
- `jenkinsAdminPw`

2. Edit Makefile and change `CONTAINER_NAME` and `IMAGE_NAME` to whatever you want.

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