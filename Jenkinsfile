pipeline {
  
  stages {
    stage('Deploy') {
      agent any
      steps {
        sshagent(credentials: ['e0b305e2-d840-4b6f-864f-6793f5a0e00f']) {
          sh 'ssh louismylle@192.168.1.183 bash -c "'cat file.txt'"'
        }

      }
    }

  }
}
