pipeline {
  agent {
    docker {
      image 'joebibe/projet-cacti'
      args '-p 80:80'
    }

  }
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            echo 'Building..'
          }
        }
        stage('build ') {
          steps {
            build(quietPeriod: 1, job: 'build image ')
          }
        }
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}