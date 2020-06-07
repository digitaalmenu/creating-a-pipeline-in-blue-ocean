pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3000:3000'
    }

  }
  stages {
    stage('Deliver') {
      steps {
        sshagent(credentials: ['e0b305e2-d840-4b6f-864f-6793f5a0e00f']) {
          sh 'ssh louismylle@192.168.1.183'
        }
      }
    }
  }
}
