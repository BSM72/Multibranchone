pipeline{
    agent any
     environment {
//         DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
    stages{
//         stage('Building our image') {
//                     steps{
//                         script {
//                         dockerImage = docker.build registry + ":$BUILD_NUMBER"
                            
//                         }
//                     }
//             }
//         stage('Deploy our image') {
//             steps{
//                 script {
//                 docker.withRegistry( '', registryCredential ) {
//                     dockerImage.push()
//             }
//         }
        
        stage('Build') {
      steps {
        bat 'docker build -t bsm123/jenkins-docker-hub .'
      }
    }
//     stage('Login') {
//       steps {
//         bat 'docker login --username=bsm123 --email=bsn7293@gmail.com'
//       }
//     }
    stage('Push') {
      steps {
        bat 'docker push bsm123/jenkinsdockerhub'
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

