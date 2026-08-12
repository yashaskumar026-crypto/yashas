pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t cicd-demo .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker stop cicd-container >nul 2>&1'
                bat 'docker rm cicd-container >nul 2>&1'
                bat 'docker run -d --name cicd-container -p 8081:80 cicd-demo'
            }
        }

        stage('Verify') {
            steps {
                bat 'docker ps'
            }
        }
    }

    post {
        success {
            echo 'CI/CD Pipeline Completed Successfully!'
        }

        failure {
            echo 'CI/CD Pipeline Failed!'
        }
    }
}
