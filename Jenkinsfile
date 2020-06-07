pipeline {
  agent any
  stages {
    stage('Deploy') {
      steps {
        sh '''#!/bin/sh
ssh louismylle@192.168.1.183 <<EOF
touch teset.js
EOF'''
      }
    }

  }
}