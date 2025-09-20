pipeline {
    agent any

    environment {
      IMAGE_NAME = "olaunicamp"
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/lucaspagliari/inf335-trabalho-5.2.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                  sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                  sh "docker run --rm ${IMAGE_NAME}"
                }
            }
        }
    }
    post {
      always {
        echo "pipeline finalizada!"
      }
    }
}