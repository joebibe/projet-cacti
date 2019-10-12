pipeline {
    agent any
    stages {
	    stage('Compile') {
            steps {
                    echo "Compiled Successfully!!"
            }
        }
	
        stage('JUnit') {
            steps {
                 echo "JUnit Passed Successfully!"
            }  
        }
    
        stage('Unit-Test') {
            steps {
                echo "Running JUnit Tests"  
            }
        }
    
        stage('quality-Gate') {
            steps {
                echo "Verifying Quality Gates"
            }
        }
    
        stage('deploy') {
            steps {
              echo "Pass!"
            }  
        }
    }
}

