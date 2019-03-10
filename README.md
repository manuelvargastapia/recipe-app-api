# Recipe App API
This is a guided project from the Udemy course [_Build a Backend REST API with Python & Django - Advanced_](https://www.udemy.com/django-python-advanced/).

To test this project, you only need **Git** (or other VSC) and **Docker**. Caveat: you'll need a Linux distro, macOS or Windows Pro to run Docker; isn't supported by Windows Home. Download: [Windows/Mac,](https://www.docker.com/get-started) [Linux](https://docs.docker.com/install/linux/docker-ce/ubuntu/) (you'll also need [Docker Compose](https://docs.docker.com/compose/install/) separately on Linux)

Use the following commands to setup this project locally:

1. Build Docker image: `docker build .` or `sudo docker build .` if you haven't [setting up Docker as root user](https://docs.docker.com/v17.09/engine/installation/linux/linux-postinstall/). This command will execute the _Dockerfile_ file of the project. That will prepare your environment with all the needed tools.

2. Build Docker Compose: `docker-compose build` or `sudo docker-compose build`. This will prepare the services described in _docker-compose.yml_ file.

3. Create Django project: `sudo docker-compose run app sh -c "django-admin.py startproject app ."`