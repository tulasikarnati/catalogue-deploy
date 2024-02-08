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
        string(name: 'version', defaultValue: '1.0.0', description: 'What is the artifact version?')
        string(name: 'environment', defaultValue: 'dev', description: 'What is the environment?')

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
