pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "running Build stage of hello-pipeline"
                    sh 'whoami'
                    sh 'uname -a'
            }
        }
        stage('Test') {
            steps {
                echo "running Test stage of hello-pipeline"
            }
        }
        stage('Deploy') {
            steps {
                echo "running Deploy stage of hello-pipeline"
            }
        }
    }
    post {
        success {
            echo "successful pipeline"
        }
        failure {
            echo "failed pipeline"
        }
    }
}
