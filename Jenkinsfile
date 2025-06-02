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
                bat '''
                    cd backend
                    npm install
                    cd ../frontend
                    npm install
                '''
            }
        }

        stage('Run Backend Tests') {
            steps {
                bat '''
                    cd backend
                    npm test
                '''
            }
        }

        stage('Run Frontend Tests') {
            steps {
                bat '''
                    cd frontend
                    npm test
                '''
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
