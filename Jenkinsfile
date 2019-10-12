node {
    checkout scm

    docker.withRegistry('https://hub.docker.com/r/joebibe/projet-cacti') {

        docker.image('joebibe/projet-cacti').inside {
            sh 'make test'
        }
    }
}
