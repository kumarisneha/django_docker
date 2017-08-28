
=====================
Django-docker
=====================
A framework for deploying Django projects on Docker

Installation
::::::::::::::::::::::::::::::::::

First, `install Docker`__
.. __install Docker: https://docs.docker.com/installation/

Next, clone this repo:
::

    $ git clone https://github.com/kumarisneha/django_docker.git
    $ cd django-docker

All this three .py files are imported to main.py from mymodule folder.

Configure the project
********************
Build the Docker image (you should be in the django-docker/ directory, which contains the Dockerfile):
::

    $ docker build -t <yourname>:0.1 .
        
Run the Docker image you just created
::

    $ docker run -d -p 8000:8000 <yourname>:0.1

Run docker ps to verify that the Docker container is running:
::

    CONTAINER ID        IMAGE                      COMMAND                  CREATED             STATUS              PORTS                          NAMES
    2830610e8c87        <yourname>/django-docker   "/usr/bin/supervisord"   25 seconds ago      Up 25 seconds       0.0.0.0:80->80/tcp, 8000/tcp   focused_banach

You should now be able to access the running app through a web browser. Run docker-machine ls to get the local IP address for your Docker host:
::

    NAME           ACTIVE   DRIVER       STATE     URL                         SWARM
    mydockerhost   *        virtualbox   Running   tcp://192.168.99.100:2376
    Open http://192.168.99.100 (or your host's address, if it's different) in a browser. You should see a "Hello, world!" message.
    
Grab the CONTAINER ID from the docker ps output above, and use docker kill to stop the container:
::
    $ docker kill 2830610e8c87
        
The output of docker ps should now be empty:
::
    $ docker ps
    CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
   
