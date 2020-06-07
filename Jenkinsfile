pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3000:3000'
    }

  }
  stages {
    def remote = [:]
    remote.name = 'test'
    remote.host = '192.168.1.183'
    remote.user = 'louismylle'
    remote.password = 'Snoes007'
    remote.allowAnyHosts = true
    stage('Deliver') {
      steps {
        sshagent(credentials: ['e0b305e2-d840-4b6f-864f-6793f5a0e00f']) {
          sh 'ssh user@host bash -c "\'cat file.txt\'"'
        }

      }
    }

  }
}
