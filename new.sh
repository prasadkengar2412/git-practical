pipeline {
    agent any
        parameters {string(name: 'myParameter', defaultValue: 'myVal', description: 'Enter Parameter value?') }
        stages {
            stage('Build') {
                            steps {
                                    echo 'Building..'
                                    echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                                    }
                             }
            stage('Test') {
                            steps {
                                    echo 'Testing..'
                                    echo "${params.myParameter} is value retrieved!"
                                    }
                             }
            stage('Deploy') {
                            steps {
                                     echo 'Deploying....'
                                    }
                  }
             }
