#!/bin/bash

sudo apt-get update

# Install Docker
sudo apt-get install -y docker.io

# Install AWS CLI
sudo apt-get install -y awscli

# Log in to ECR
$(aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 426857564226.dkr.ecr.us-west-2.amazonaws.com)

# Copr files from s3 to EC2
aws s3 cp s3://sujata-docker/. /home/ubuntu  --recursive

# Change to the app directory
cd /home/ubuntu/react-app

# Build the Docker image for frontend
cd react/
docker build -t front-end:latest .

# Tag the Docker image
docker tag front-end:latest 426857564226.dkr.ecr.us-west-2.amazonaws.com/sujata-ecr

# Push the Docker image to ECR
docker push 426857564226.dkr.ecr.us-west-2.amazonaws.com/sujata-ecr

# Build the Docker image for backend
cd /home/ubuntu/react-app/node
docker build -t back-end:latest .

# Tag the Docker image
docker tag back-end:latest 426857564226.dkr.ecr.us-west-2.amazonaws.com/sujata-ecr

# Push the Docker image to ECR
docker push 426857564226.dkr.ecr.us-west-2.amazonaws.com/sujata-ecr

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Run docker-compose
cd /home/ubuntu
docker-compose up --build -d
