pipeline {
    agent any
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
                  if (env.BRANCH_NAME == 'master') {
                      echo 'I only execute on the master branch'
		  } else {
			echo 'working'
                   }
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
