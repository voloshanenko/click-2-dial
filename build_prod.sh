#! /bin/bash
source env.prod
docker build -t click2dial .
docker tag click2dial ${DOCKER_REGISTRY}/click2dial:latest
docker push ${DOCKER_REGISTRY}/click2dial:latest
python deploy/deploy.py
