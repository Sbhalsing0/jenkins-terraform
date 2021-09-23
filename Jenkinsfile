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
	       sh "pwd"
            }
        }

        stage("build and test the project") {
            stages {
               stage("build") {
                   steps {
                       sh "terraform -version"
                   }
               }
               stage("test") {
                   steps {
                       withAWS(credentials:'aws_terraform') {
                       sh "terraform init"
                       sh "terraform plan"
                       sh "terraform apply -auto-approve"
                       }
                    }
               }
            }
        }
    }
}
