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



/* https://www.blazemeter.com/blog/how-to-use-the-jenkins-declarative-pipeline
	https://www.edureka.co/blog/jenkins-pipeline-tutorial-continuous-delivery
	
	https://go.cloudbees.com/docs/cloudbees-documentation/use/automating-projects/jenkinsfile/
	*/
