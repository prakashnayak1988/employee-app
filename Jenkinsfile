pipeline {
    agent any

    tools {
        jdk 'JDK17'        // Configure name in Jenkins -> Global Tool Configuration
        maven 'Maven3'     // Configure Maven installation in Jenkins
    }

    environment {
        TOMCAT_HOME = "/usr/local/Cellar/tomcat/10.1.10/libexec"   // Change this to your Tomcat installation path
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/prakashnayak1988/employee-app.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                // Copy WAR file into Tomcat webapps directory
                sh '''
                   cp target/employee-app-1.0.0.war $TOMCAT_HOME/webapps/
                   $TOMCAT_HOME/bin/shutdown.sh || true
                   $TOMCAT_HOME/bin/startup.sh
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Build, Test, and Deployment successful!'
        }
        failure {
            echo '❌ Build or Tests failed!'
        }
    }
}
