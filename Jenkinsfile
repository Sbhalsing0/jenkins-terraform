

pipeline {
    agent {
       label "docker_slave_mvn"
    }
    stages {
        stage("checkout code") {
            steps {
               echo "Running in docker"
	           git branch: 'master',
		           credentialsId: 'jenkins',
                   url: 'https://github.com/Sbhalsing0/maven-project.git'
               dir("webapp") {
                   sh "pwd"
                }
               sh "ls -lat"
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
                       sh "terraform destroy"
                       }
                    }
               }
            }
        }
    }
}
