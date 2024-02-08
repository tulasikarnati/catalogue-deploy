pipeline {
    agent {
        node {
            label 'AGENT-1'
        }
    }
    // environment {
    //     GREETING = "Good Morning"
    // }
    options {
        timeout(time: 1, unit: 'HOURS')
        disableConcurrentBuilds() 
    }
    parameters {
        string(name: 'version', defaultValue: '', description: 'What is the artifact version?')
        string(name: 'environment', defaultValue: '', description: 'What is the environment?')

    }
    // build
    stages {
        stage('Deploy') {
            steps {
                sh """
                    echo "version: ${params.version}"
                    echo "environment: ${params.environment}"
                """
            }
        }

         stage('Init') {
            steps {
                sh """
                    cd terraform
                    terraform init --backend-config=${params.environment}/backend.tf
                    -reconfigure
                """
            }
        }
    }
    // post build
    post {
        always {
           echo "always run till pipeline runs " 
           deleteDir()
        }
        failure {
            echo "pipeline is failed"
        }
        success {
            echo "pipeline is success"
        }
    }
}
