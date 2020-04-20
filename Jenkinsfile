node {
      // stage('test'){
      //       sh 'echo test'
      // } 
      stage('Checkout'){
            checkout scm
      }
      stage('build') {
            sh 'mvn clean package'
      }
      
}
