pipeline {
agent {
    docker {
        image 'hashicorp/terraform:latest'
        label 'docker_mvn'
        }
    }
    stages {
        stage("checkout code") {
            steps {
               echo "Running in docker"
	           git branch: 'main',
		           credentialsId: 'Github_Sanket',
                   url: 'https://github.com/Sbhalsing0/jenkins-terraform.git'
               sh "ls -la"
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
                       withAWS(credentials:'AWS_Creds') {
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
