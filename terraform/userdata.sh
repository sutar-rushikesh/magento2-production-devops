#!/bin/bash
set -euxo pipefail

# Log all output
exec > >(tee /var/log/user-data.log | logger -t user-data) 2>&1

echo "========================================="
echo "Starting Magento Server Bootstrap"
echo "========================================="

# Update packages
apt-get update -y
apt-get upgrade -y

# Install required packages
apt-get install -y \
    git \
    curl \
    unzip \
    wget \
    ca-certificates \
    gnupg \
    lsb-release

##################################################
# Install Docker
##################################################

install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg \
| gpg --dearmor -o /etc/apt/keyrings/docker.gpg

chmod a+r /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/debian \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
> /etc/apt/sources.list.d/docker.list

apt-get update -y

apt-get install -y \
docker-ce \
docker-ce-cli \
containerd.io \
docker-buildx-plugin \
docker-compose-plugin

systemctl enable docker
systemctl start docker

##################################################
# Install AWS CLI
##################################################

apt-get install awscli -y

##################################################
# Configure Docker
##################################################

usermod -aG docker admin || true

##################################################
# Clone Git Repository
##################################################

cd /home/admin

if [ ! -d "magento2-production-devops" ]; then
    git clone https://github.com/sutar-rushikesh/magento2-production-devops.git
fi

chown -R admin:admin /home/admin/magento2-production-devops

##################################################
# Start Magento
##################################################

cd /home/admin/magento2-production-devops

docker compose pull || true

docker compose up -d --build

##################################################
# Wait for Containers
##################################################

sleep 30

docker ps

echo "========================================="
echo "Bootstrap Completed Successfully"
echo "========================================="
