pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f java-tomcat-sample/pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage('Create Tomcat Docker Image') {
            steps {
                sh 'docker build . -t tomcat-sample-web-app:${env.BUILD_ID}'
            }
        }
        // stage('Deploy in Staging Environment'){
        //     steps{
        //         build job: 'Deploy_App_Staging_Env'

        //     }
            
        // }
        // stage('Deploy to Production'){
        //     steps{
        //         timeout(time:5, unit:'DAYS'){
        //             input message:'Approve PRODUCTION Deployment?'
        //         }
        //         build job: 'Deploy_App_Prod_Env'
        //     }
        // }
    }
}