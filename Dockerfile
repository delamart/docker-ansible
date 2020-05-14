FROM python:3-slim

RUN mkdir /ansible && chmod 700 /ansible
WORKDIR /ansible

RUN apt-get update && apt-get install -y ssh-client && apt-get clean
RUN pip install ansible paramiko && rm -rf ~/.cache/pip/*

ENTRYPOINT ["ansible-playbook"]