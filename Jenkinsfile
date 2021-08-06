pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
              echo "testing"
              sh 'ls'
            }
        }
        stage('Deploy') {
            steps {
              sh '''
		  for f in *.json; do
                  echo "Deploying file $f";
                  ctm deploy $f;
                  done
	      '''
            }
        }
    }
}
