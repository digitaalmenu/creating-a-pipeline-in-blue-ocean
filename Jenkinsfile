pipeline {
  agent any
  stages {
    stage('Deploy') {
      steps {
        sh '''#!/bin/sh
ssh louismylle@192.168.1.183 <<EOF
cd /home/louismylle/digitaalmenu/site/creating-a-pipeline-in-blue-ocean
git pull
npm install
npm run build
EOF'''
      }
    }

  }
}