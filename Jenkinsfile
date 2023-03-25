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
                sh '''
                    cd "$(mktemp -d)"
                    git clone https://github.com/Idzana/test-site.git
                    cd test-site/
                    cp index.html /usr/share/nginx/html/index.html
                    '''
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