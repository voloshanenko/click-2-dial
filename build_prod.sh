#! /bin/bash
source env.prod
docker build -t click-2-dial .
docker tag click-2-dial ${DOCKER_REGISTRY}/click-2-dial:latest
docker push ${DOCKER_REGISTRY}/click-2-dial:latest
python deploy/deploy.py
