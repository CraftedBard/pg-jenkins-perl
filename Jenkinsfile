pipeline {
    agent any 
    stages {
        stage('Prepare') {
            steps {
                sh 'echo "Testing Prepare Stage"'
                sh 'docker build  .'
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

