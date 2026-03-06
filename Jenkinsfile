
pipeline {
    agent any

    tools {
        maven 'mvn'
    }

    stages {

        stage('Checkout') {
            steps {
               checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/kishorekorla1993/hotstar_project.git']])
            }
        }
		stage('clean package') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t img1 .'
            }
        }
		 stage('docker_run') {
            steps {
                sh 'docker run -itd --name cont1 -p 8085:8080 img1'
            }
        }
        

    }
}
