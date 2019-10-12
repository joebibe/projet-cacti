node {
    checkout scm

    docker.withServer('tcp://192.168.1.79:2376', 'swarm-certs') {
        docker.image('joebibe/projet-cacti').withRun('-p 3306:3306') {
            /* do things */
        }
    }
}
