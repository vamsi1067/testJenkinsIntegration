pipeline {
     agent any
     stages {
         stage('Clean Workspace') {
             steps {
                  deleteDir()                  
             }
         }
         stage('Clone Project') {
             steps {                  
                  checkout scm                  
             }
         }
         stage('Build') {
             steps {                  
                  sh './gradlew dockerBuild'
             }              
             post {
                 always {
                     jiraSendBuildInfo site: 'bashsquad.atlassian.net'
                 }
             }
         }
     }
 }
