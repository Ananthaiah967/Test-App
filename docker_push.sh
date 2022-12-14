#!/bin/bash
cd /var/lib/jenkins/workspace/Test_App_Deployment/Application/v2/

aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 237040306463.dkr.ecr.eu-central-1.amazonaws.com
sudo docker build -t test .
sudo docker tag test:latest 237040306463.dkr.ecr.eu-central-1.amazonaws.com/test:latest
sudo docker push 237040306463.dkr.ecr.eu-central-1.amazonaws.com/test:latest
