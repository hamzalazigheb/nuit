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
    }

    post {
        always {
            cleanWs()
            script {
                docker.image("hamzalazigheb/nuit").remove()
            }
        }
    }
}

