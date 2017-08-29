#!groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'docker build -t my-nodejs-app .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing wiht mocha..'
                sh './node_modules/mocha/bin/mocha ./test/t*.*'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
