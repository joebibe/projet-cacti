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
        always {
            echo "This will always run"
        }
        success {
            echo "This will run only if successful"
        }
        failure {
            echo "This will run only if failed"
        }
        unstable {
            echo "This will run only if the run was marked as unstable"
        }
        changed {
            echo "This will run only if the state of the Pipeline has changed"
            echo "for example, if the Pipeline was previously failling but is now successful"
        }

    }
}

