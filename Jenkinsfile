pipeline {
    agent any
    stages {
        stage('Build and Push Image') {
            steps {
                sh 'docker build -t us-central1-docker.pkg.dev/my-gcp-project/blue-green-images/app:${BUILD_NUMBER} .'
                sh 'docker push us-central1-docker.pkg.dev/my-gcp-project/blue-green-images/app:${BUILD_NUMBER}'
            }
        }
        stage('Deploy Blue Version') {
            steps {
                sh 'kubectl apply -f blue-deployment.yaml'
            }
        }
        stage('Switch Traffic to Green') {
            steps {
                input "Switch traffic to Green?"
                sh 'kubectl apply -f green-deployment.yaml'
            }
        }
    }
}
