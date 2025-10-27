pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-static-site"
    }

    stages {

        stage('Checkout Code') {
            steps {
                echo "Pulling code from Git repo..."
                git branch: 'main', url: 'https://github.com/jubairthematics/harsh1.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building Docker image locally..."
                    dockerImage = docker.build("${env.IMAGE_NAME}:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Security Scan') {
            steps {
                echo "📌 TODO: Add Trivy or Snyk scanning here"
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                echo "📌 TODO: kubectl apply -f deployment.yaml"
            }
        }
    }
}
