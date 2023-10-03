pipeline {
    agent any
    stages {
        stage (git) {
            steps {
                git branch: 'main', url: 'https://github.com/gopal99489/cakezone.git'
            }
        }
        stage (build) {
            steps {
                sh 'mvn clean package'
            }
        }
        stage (deploy) {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://13.126.70.7:8081/')], contextPath: 'vamsi', war: '**/*.war'
            }
        }
    }
}
