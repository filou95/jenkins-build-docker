node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("filou95/httpd-esgi")
    }

    stage('Test image') {
        docker.image('filou95/httpd-esgi').withRun('-p 80:80') { c ->
        sh 'docker ps'
        sh 'curl localhost'
	     }
    }
}

