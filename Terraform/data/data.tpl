#!/bin/bash

sudo apt-get update -y
 
sudo apt-get upgrade -y 

sudo apt-get install docker.io -y 

sudo service docker start
sudo usermod -a -G docker ubuntu
newgrp docker 

sudo echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC76WC+y2N11VhS9w59dGJEaNMDWeK6IA0AJEvIsOVD85zi+LMumXq3NNcmr6uSc+YSpQLHVWnw2x5XfQljXLGGjqPQthPJAscskd/WcAFBJajalZ7Rx6xyFXcDcLnWcpxX0OjQB2WsSQG4FuEVPEA0boidHT6Z85aqdjZ/oVh9fFhm/gIKssQFLdZBhh4pXaybjCC9cPFRfg896eppoGW/1jEA1m9sm5UOYj4CmVaglQGADUaHaPQFkVYcJfgihagHh+CG3J9KyoYkuqDkZuJGr5KvuoqSYKxJ1DOEvTtszcCER6Xp+bHK4Wdjlkqs3zjydHjTnk1vcaxuT4jeQidf Divyam >> authorized_keys
