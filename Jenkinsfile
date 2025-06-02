pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Install Dependencies') {
            steps {
                script {
                    // Install backend dependencies
                    sh 'cd backend && npm install'
                    // Install frontend dependencies
                    sh 'cd frontend && npm install'
                }
            }
        }
        stage('Run Backend Tests') {
            steps {
                script {
                    sh 'cd backend && npm test'  // Adjust if you have tests
                }
            }
        }
        stage('Run Frontend Tests') {
            steps {
                script {
                    sh 'cd frontend && npm test'  // Adjust if you have tests
                }
            }
        }
    }
    post {
        always {
            echo 'CI Pipeline finished.'
        }
        success {
            echo 'Build and tests succeeded!'
        }
        failure {
            echo 'Build or tests failed.'
        }
    }
}
