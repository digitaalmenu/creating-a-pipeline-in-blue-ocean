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
        sh '''touch file.js
exit'''
      }
    }

  }
}