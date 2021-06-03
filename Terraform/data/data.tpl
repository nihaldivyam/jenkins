#!/bin/bash

sudo apt-get update -y
 
sudo apt-get upgrade -y 

sudo apt-get install docker.io -y 

sudo service docker start
sudo usermod -a -G docker ubuntu
newgrp docker 
