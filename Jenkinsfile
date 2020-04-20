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
      stage('Build image') {
         /* This builds the actual image; synonymous to
         * docker build on the command line */

         app = docker.build("coinorg/configserver")
     }
      
}
