#!/usr/bin/bash

pipeline {

    agent {
        docker {
            image 'nginx'
            args '-u root'
        }
    }

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'service nginx start'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'curl http://localhost/'
            }
        }
    }
}