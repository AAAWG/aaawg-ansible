#!/usr/bin/env bash
# Setup AWS authentication for Ansible and ec2.py inventory scripts using
# environment variables

# Access Key ID:
# Secret Access Key:


# Setup environment variables
echo "Setting up EC2_ACCESS_KEY..."
export EC2_ACCESS_KEY="xxxxxxx"
echo

echo "Setting up EC2_SECRET_KEY..."
export EC2_SECRET_KEY="yyyyyyyyyyy"
echo

echo "Setting up AWS_ACCESS_KEY_ID..."
export AWS_ACCESS_KEY_ID=${EC2_ACCESS_KEY}
echo "export AWS_ACCESS_KEY_ID=${EC2_ACCESS_KEY}"
echo

echo "Setting up ec2.py:s AWS_SECRET_ACCESS_KEY..."
export AWS_SECRET_ACCESS_KEY=${EC2_SECRET_KEY}
echo "export AWS_SECRET_ACCESS_KEY=${EC2_SECRET_KEY}"
echo 

echo "Setting up Ansible inventry with EC2.py..."
export ANSIBLE_HOSTS=./plugins/inventory/ec2.py 
export EC2_INI_PATH=./plugins/inventory/ec2.ini 
echo

echo "Environment variables setup!"
echo

echo "BASH Environment export commands:"
echo "export EC2_ACCESS_KEY="${EC2_ACCESS_KEY}"
echo "export EC2_SECRET_KEY="${EC2_SECRET_KEY}"
echo "export AWS_ACCESS_KEY_ID=${EC2_ACCESS_KEY}"
echo "export AWS_SECRET_ACCESS_KEY=${EC2_SECRET_KEY}"
echo "export ANSIBLE_HOSTS=./plugins/inventory/ec2.py"
echo "export EC2_INI_PATH=./plugins/inventory/ec2.ini"
echo

