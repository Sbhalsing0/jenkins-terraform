#!/bin/sh

ssh -o StrictHostKeyChecking=no ubuntu@192.168.0.110 << 'ENDSSH'
 pwd
#  cd /home/ubuntu/app
#  cat .env
#  docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD" $CI_REGISTRY_URL
#   export $(cat .env | xargs)
#   ##aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 547837182592.dkr.ecr.us-east-1.amazonaws.com
#   #aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 657309275978.dkr.ecr.ap-south-1.amazonaws.com
#   docker --version
#   #docker stop sanket-app
#   # Run container
# # Make sure this Container is not running
#   printf "Make sure a Container with the designated name is not running..."
#   OUTPUT="$(docker stop sanket-app)"
#   if echo "$OUTPUT" | grep -c "No such container"; then
#       echo "A container with name, sanket-app, was stopped. Good to proceed.."
#   else
# 	    echo "No container with name, sanket-app, exists. Good to proceed.."

#   fi
#   docker pull $DOCKER_REGISTRY/$APP_NAME:$CI_PIPELINE_IID
#   #docker pull 657309275978.dkr.ecr.ap-south-1.amazonaws.com/myapp:$CI_PIPELINE_IID
#   docker run --rm -d --name sanket-app -p 8081:8081 657309275978.dkr.ecr.ap-south-1.amazonaws.com/myapp:$CI_PIPELINE_IID
