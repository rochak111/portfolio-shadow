pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Pull code from Git repository
                git 'https://github.com/rochak111/portfolio-shadow.git'

                // Build Docker image
                sh 'docker build -t webapp .'
            }
        }
        stage('Test') {
            steps {
                // Run tests (if applicable)
                // Replace this with your actual test commands
                sh 'echo "Running tests"'
            }
        }
        stage('Deploy') {
            steps {
                // Tag Docker image
                sh 'docker tag webapp rochak11/krishna:${BUILD_NUMBER}'

                // Push Docker image to Docker Hub
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                    sh 'docker push rochak11/krishna:${BUILD_NUMBER}'
                }

                // Deploy Docker container on port 8082
                    sh 'docker run -d -p 8083:80 rochak11/jenkins:${BUILD_NUMBER}'

            }
        }
    }
}