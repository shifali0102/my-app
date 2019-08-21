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
                  git url: 'https://github.com/shifali0102/my-app.git'
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
	  stage('Testing Stage'){
	        steps{
		  		sh 'mvn test'
	     	  	        junit 'target/surefire-reports/*.xml'
			      
	      	             }
			}
           stage('Code Coverage Test'){
		  steps{
				sh 'mvn cobertura:cobertura'
			      /*  sh 'mvn site'*/
			        cobertura coberturaReportFile: 'target/site/cobertura/index.html'
		  }
	   }
		
   }
}
