pipeline{
	
	tools{
	maven 'M2_HOME'
		jdk 'JAVA_HOME'
	}
	agent {
    node {
	    label ''
      customWorkspace '/var/lib/jenkins/myspace'
    }
  }
	stages{
           stage('Checkout Stage'){
               steps{
                  git url: 'https://github.com/Shifali-Srivastava/my-app.git'
                 sh 'mvn clean'
	       }
          }
	
			
	   stage('Compile Stage'){
	       steps{
		       sh 'mvn compile'
	       }
             }
		
}
}
