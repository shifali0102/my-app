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
          stage('Static Code Analysis Stage'){
	        steps{
	         	sh 'mvn sonar:sonar -Dsonar.host.url=http://52.172.158.204:9000/sonar/ '
		     }
	 	}
		
   }
}
