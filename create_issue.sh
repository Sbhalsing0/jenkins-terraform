#!/bin/bash
gh auth login --with-token < secret.txt
#cd /home/ubuntu/Documents/
git clone git@github.com:Sbhalsing0/jenkins-terraform.git
ls
cd jenkins-terraform
commit=$(git log |  awk '{print $2}' | head -n1)
echo $commit
gh issue create --title "Build Failure" --body "Root cause : $commit" --label "Incident"
