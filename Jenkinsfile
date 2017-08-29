pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sudo docker build - < Dockerfile
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
