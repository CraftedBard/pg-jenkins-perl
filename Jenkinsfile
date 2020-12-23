pipeline {
    agent { dockerfile true }

    stages {
        stage('Prepare') {
            steps {
                sh 'echo "Testing Prepare Stage"'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    echo "Multiline shell steps works too"
                    ls -lah
                '''
            }
        }
    }
}
