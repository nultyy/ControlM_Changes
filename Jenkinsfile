pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
              echo "testing"
              sh 'pwd'
            }
        }
        stage('Deploy') {
            steps {
              sh '''
		  ./create_ctm_session.sh
                  for f in *.json; do
                  echo "Deploying file $f";
                 # curl -k -H "Authorization: Bearer $token" -X POST -F "definitionsFile=@/home/nulty/controlm_changes/$f" "$endpoint/deploy
                  done
	      '''
            }
        }
    }
}
