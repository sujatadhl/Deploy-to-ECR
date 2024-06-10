#!/bin/bash

sudo apt-get update

# Install Docker
sudo apt-get install -y docker.io

# Install AWS CLI
sudo apt-get install -y awscli

# Log in to ECR
aws ecr get-login-password --region us-east-1| docker login --username AWS --password-stdin 426857564226.dkr.ecr.us-east-1.amazonaws.com

# Copr files from s3 to EC2
aws s3 cp s3://sujata-docker/. /home/ubuntu  --recursive

# Change to the app directory
cd /home/ubuntu/react-app

# Build the Docker image for frontend
cd react/
docker build -t front-end:2.0 .

# Tag the Docker image
docker tag front-end:2.0 426857564226.dkr.ecr.us-east-1.amazonaws.com/sujata-ecr

# Push the Docker image to ECR
docker push 426857564226.dkr.ecr.us-east-1.amazonaws.com/sujata-ecr

# Build the Docker image for backend
cd /home/ubuntu/react-app/node
docker build -t back-end:1.0 .

# Tag the Docker image
docker tag back-end:1.0 426857564226.dkr.ecr.us-east-1.amazonaws.com/sujata-ecr

# Push the Docker image to ECR
docker push 426857564226.dkr.ecr.us-east-1.amazonaws.com/sujata-ecr

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Run docker-compose
cd /home/ubuntu/react-app
docker-compose up --build -d
