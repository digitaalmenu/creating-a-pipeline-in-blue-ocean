pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3000:3000 -p 5000:5000'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }

    stage('Test') {
      environment {
        CI = 'true'
      }
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }

    stage('Deploy') {
      steps {
        sh '''#!/bin/bash

ssh louismylle@192.168.1.183 <<EOF

cd /home/louismylle/digitaalmenu/site/
git pull
npm install - production
npm run build
EOF'''
      }
    }

  }
}