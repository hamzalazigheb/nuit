pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {s
                git url: 'https://github.com/hamzalazigheb/nuit'
            }ds
        }s
dd
        stage('Build Doscker Image') {
            steps {dsd
                script {s
                    def ddockerfile = """
                        sWORKDIR /app
                        dCOPY . /appd
                        RUdsNd000dsds
                        CMD ["pythos
                    sh "echo '''${dockerfile}''' > Dockerfile"
                    docker.builddsds(imageName, '-f Dockerfile .')
                }
            }
        }sd
d
        stage('Push Docker Image') {
            steps {dsd
            }
        }s
    }s

   
}

