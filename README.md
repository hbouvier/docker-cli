# Dockerized Docker Client

A docker containter with the `docker` client installed to be able to run docker command.
The most common usecase is when you have a Cloud VM that you don't have access to or don't
to install/run processes directly on the VM, you can still run this container and run docker
commands from it (e.g. start, restart or kill another container on the host VM).


## How to use the docker-cli container

```bash
docker run -tiv /var/run/docker.sock:/var/run/docker.sock hbouvier/docker-cli:1.13.1 ps
```
