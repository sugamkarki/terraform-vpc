#!/bin/bash
# Update the package list
sudo yum update -y

# Install Docker
sudo yum install docker -y

# Start the Docker service
sudo systemctl start docker

# Add the ec2-user to the docker group to run Docker commands without sudo
sudo usermod -aG docker ec2-user

# Enable Docker to start on boot
sudo systemctl enable docker