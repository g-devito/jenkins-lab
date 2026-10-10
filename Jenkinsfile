pipeline {
    agent any
    environment {
        APP_NAME = 'myapp'
    }
    stages {
        stage('Build') {
            steps {
                echo "running Build stage of hello-pipeline"
		script {
			env.IMAGE = "${APP_NAME}:${BUILD_NUMBER}-${GIT_COMMIT.take(7)}"
		}
            }
        }
        stage('Test') {
            steps {
                echo "running Test stage of hello-pipeline"
		echo "testing ${IMAGE}"
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
