pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/hamzalazigheb/nuit'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def imageName = "hamzalazigheb/nuit"
                    def dockerfile = """
                        FROM python:3.8
                        WORKDIR /app
                        COPY . /app
                        RUN pip install -r requirements.txt
                        EXPOSE 5000
                        CMD ["python", "app.py"]
                    """
                    sh "echo '''${dockerfile}''' > Dockerfile"
                    docker.build(imageName, '-f Dockerfile .')
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    def imageName = "hamzalazigheb/nuit"
                    docker.withRegistry('https://your-docker-registry', 'docker-registry-credentials-id') {
                        docker.image(imageName).push()
                    }
                }
            }
        }
    }

   
}

