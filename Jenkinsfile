pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3000:3000 -p 5000:5000'
    }

  }
  stages {
    stage('Deploy') {
      steps {
        sh 'ssh 192.168.1.183'
      }
    }

  }
}