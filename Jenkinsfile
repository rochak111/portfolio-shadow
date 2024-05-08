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
                // Deploy Docker container
                sh 'docker run -d -p 8080:80 webapp'
            }
        }
    }
}
