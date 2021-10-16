pipeline {
agent {
    docker {
        image 'maven:3.8.1-adoptopenjdk-11'
        label 'my-defined-label'
        args  '-v /tmp:/tmp'
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
