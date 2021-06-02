pipeline {
    agent any
    stages {
        stage("1: Build Docker image") {
            steps {
                sh """
                    git clone git@github.com:nihaldivyam/jenkins.git 
                    cd jenkins
                    git pull
                    docker build -t divyam/node-web-app .
                """ 
            }
            }
        stage("2: Run Docker images ") {
            steps {
                sh 'docker run -p 49160:8080 -d --name node-container divyam/node-web-app'
            }
        }
        stage("3: Liveness Test") {
            steps {
                sh 'curl -i localhost:49160'
                sleep 30
            }
        }
        stage("4: Repo Cleanup") {
            steps {
                sh """
                docker container rm -f node-container
                rm -rf jenkins/
                """
            }
        }
    } }