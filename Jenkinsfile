pipeline {
    agent any 
    stages {
        stage('Prepare') {
            steps {
                sh 'echo "Testing Prepare Stage"'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Hello World"'
                sh 'docker --version'
            }
        }
    }
}

