
pipeline {
    agent any 
    tools{
        maven "M2"
    }
    stages {
        stage('clone'){
            steps{
                 git credentialsId: 'gitlab', url: 'git@gitlab.com:samiibnbougatef/projet_j2e.git'
            }
        }
        stage('build'){
            steps{
                sh "mvn clean install package"
            }
        }
        stage('k8s deployment'){
            steps{
      ansiblePlaybook credentialsId: 'ansadmin', disableHostKeyChecking: true, extras: '--extra-vars "BN=${BUILD_NUMBER}"', installation: 'ansible', playbook: '/home/ansadmin/k8s-ansible.yml'            
                
            }
        }
        
    }
    }


