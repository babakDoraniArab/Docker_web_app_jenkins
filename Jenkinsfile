pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerHub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t bablido/nodewebapp:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push bablido/nodewebapp:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}