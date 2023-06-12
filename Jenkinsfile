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
        stage('Deploy')
        {
            steps{
                echo 'DEPLOY'
            }
        }
    }
}

