pipeline{
    agent any
     environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
    stages{
        stage('Build') {
      steps {
        sh 'docker build -t BSM-dockerhub/jenkins-docker-hub .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push BSM-dockerhub/jenkins-docker-hub'
      }
    }
        
//         stage('Build')
//         {
//             steps{
//                 checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/BSM72/Multibranchone.git']])
//                 echo 'Build'
//             }
//         }
//         stage('Test')
//         {
//             steps{
                
//                 echo 'TeST'
//             }
//         }
//         stage('Build Docker Image')
//         {
//             steps{
//                 script{
//                     bat 'docker build -t bsm123/multibranchone .'
//                     echo 'Build Docker Image'        
                  
//                 }
//             }
//         }
//          stage('Pushing Docker Image On Docker Hub')
//         {
//             steps{
//                 script{
// //                     withCredentials([string(credentialsId: 'bsm123', variable: 'dockerhubpwd')]) {
// //                         bat 'docker login -u bsm123 -p rabiapagala12'
// //                         bat 'docker push bsm123/multibrnch'
//                     bat 'docker push bsm123/multibrcnh:tagname'
// //                     }
//                 }
//             }
//         }
        stage('Deploy')
        {
            steps{
                echo 'DEPLOY'
            }
        }
    }
}

