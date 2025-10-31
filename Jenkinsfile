pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'java-hello:1.0'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Faizansayani533/javahello.git'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    if (fileExists('Dockerfile')) {
                        sh "docker build -t ${DOCKER_IMAGE} ."
                    } else {
                        error 'Dockerfile not found in the workspace.'
                    }
                }
            }
        }

        stage('Docker Run (Optional)') {
            steps {
                sh "docker run --rm ${DOCKER_IMAGE}"
            }
        }
    }

    post {
        success {
            echo 'Java application Docker image built and run successfully!'
        }
        failure {
            echo 'Docker build or run failed.'
        }
    }
}
