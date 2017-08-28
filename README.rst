
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
    b164405ac154        django_img:0.1         "/start.sh"             48 seconds ago      Up 45 seconds        0.0.0.0:8000->8000/tcp         affectionate_borg

Open http://127.0.0.1:8000/ in a browser. You should see a "Address Book web application".
    
Grab the CONTAINER ID from the docker ps output above, and use docker kill to stop the container:
::
    $ docker kill 2830610e8c87
        
The output of docker ps should now be empty:
::
    $ docker ps
    CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
   
