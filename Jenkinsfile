pipeline{
    agent any
    stages{
        stage('Build')
        {
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/BSM72/Multibranchone.git']])
                echo 'Build'
            }
        }
        stage('Test')
        {
            steps{
                
                echo 'TeST'
            }
        }
        stage('Build Docker Image')
        {
            steps{
                script{
                    bat 'docker build -t multibranchone .'
                    echo 'Build Docker Image'        
                  
                }
            }
        }
         stage('Pushing Docker Image On Docker Hub')
        {
            steps{
                script{
                    withCredentials([string(credentialsId: 'bsm123', variable: 'dockerhubpwd')]) {
                        bat 'docker login -u bsm123 -p ${dockerhubpwd}'
                        bat 'docker push bsm123/multibrnch'    
                    }
                }
            }
        }
        stage('Deploy')
        {
            steps{
                echo 'DEPLOY'
            }
        }
    }
}

