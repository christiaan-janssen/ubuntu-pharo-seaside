node("docker-agent") {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        app = docker.build("shidima/ubuntu-pharo-seaside:${env.BUILD_ID}")
    }
    
    stage('Push Image') {
        docker.withRegistry('', 'dockerhub') {
            app.push()  
            app.push('latest')
        }
    }
}
