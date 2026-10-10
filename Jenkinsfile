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
		sh "docker build -t ${IMAGE} ." 
            }
        }
        stage('Test') {
            steps {
                echo "running Test stage of hello-pipeline"
		sh "docker run -d --name test-myapp-${BUILD_NUMBER} ${IMAGE}"
		sh "sleep 2"
		sh "docker exec test-myapp-${BUILD_NUMBER} wget -qO- http://127.0.0.1:8080 | grep 'Hello, World!'"
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
	always {
		sh "docker rm -f test-myapp-${BUILD_NUMBER} || true"
	}
    }
}
