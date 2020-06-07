pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3000:3000 -p 5000:5000'
    }

  }
  stages {
    stage('Deploy') {
      agent any
      steps {
        sh '''ssh louismylle@192.168.1.183 <<EOF
 touch index.js
EOF'''
      }
    }

  }
}