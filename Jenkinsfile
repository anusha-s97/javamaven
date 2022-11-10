pipeline{
    agent any
    tools{
        maven "maven386"
    }
    stages{
        stage("Build Maven Project"){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/anusha-s97/javamaven.git']]])
                bat 'mvn clean install'
            }
        }
        stage("Build Docker Image"){
            steps{
                script{
                    bat 'docker build -t anushas97/javamaven .'
                }
            }
        }
        stage("Push Image to DockerHub"){
            steps{
                script{
                    bat 'docker login -u anushas97 -p sur@67KSHI'
                    bat 'docker push anushas97/javamaven'
                }
            }
        }
    }
}