FROM python:3-slim

ENV ANSIBLE_VERSION=2.9.9

RUN mkdir /ansible && chmod 700 /ansible
WORKDIR /ansible

RUN apt-get update && apt-get install -y ssh-client && apt-get clean
RUN pip install ansible==${ANSIBLE_VERSION} paramiko && rm -rf ~/.cache/pip/*

ENTRYPOINT ["ansible-playbook"]