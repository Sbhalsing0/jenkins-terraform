pipeline {
    agent {
       label "docker_slave_mvn"
    }
    stages {
        stage("checkout code") {
            steps {
               echo "Running in docker"
	           git branch: 'main',
		           credentialsId: 'Github_Sanket',
                   url: 'https://github.com/Sbhalsing0/jenkins-terraform.git'

               sh "ls -lat"
	       echo "Testing"
            }
        }
    }
}
