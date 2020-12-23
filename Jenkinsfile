pipeline {
    agent any 
    environment {
        IMAGE_NAME = "pg-jenkins-perl"
    }
    stages {
        stage('Prepare') {
            steps {
                sh 'echo "Testing Prepare Stage"'
                sh 'docker build -t ${IMAGE_NAME}  .'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Hello World"'
                sh 'docker run ${IMAGE_NAME}'
            }
        }
    }
}

