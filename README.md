This document explains about CI/CD workflow for the java application.
As part of continous integration, 
As and when code checkin/ commit happens to feature branch build starts 
stage 1 - Build - Java application got build and .jar is created
stage 2 - Junit - unit test cases are executed on the jar created
stage 3 - Sonarqube - static code analysis is done on the artifact
stage 4 - Vera Code - Security scans on jar created
stage 5 - Dockerise - Dockefile for containering the jar
stage 6 - Publish - Docker image is published to acr/ecr

Deployment Workflow

Dokcer image versions are updated in manifest file accordingly
Deloyment using below command to cluster
" kubectl apply "docker ui"

<img width="2040" height="5164" alt="image" src="https://github.com/user-attachments/assets/cdebf0c5-2dd1-4b58-9c9e-7b8cf75cdb43" />

