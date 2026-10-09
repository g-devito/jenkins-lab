pipeline {
    agent any
    environment {
        APP_NAME = 'myapp'
    }
    stages {
        stage('Build') {
            steps {
                echo "running Build stage of hello-pipeline"
		echo '$APP_NAME:$BUILD_NUMBER-$GIT_COMMIT'
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
