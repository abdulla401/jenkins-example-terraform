pipeline {
  agent any
  environment {
      AWS_ACCOUNT_ID="870920198456"
      AWS_DEFAULT_REGION="us-east-2"
      AWS_REGION = 'us-east-2'
      POPESA = credentials('my.aws.credentials')
  }
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        sh 'cat /etc/os-release'
        sh 'uname -r'
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('terraform') {
      steps {
        sh './terraformw init'
        sh './terraformw apply -auto-approve -no-color'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}