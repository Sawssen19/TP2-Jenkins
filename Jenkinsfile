pipeline {
  agent any
  tools {
    maven 'maven'
    }
  stages {
    stage ("Clean up"){
      steps {
        deleteDir()
        }
      }

    stage ("Clone repo"){
      steps {
        sh "git clone https://github.com/Sawssen19/TP2-Jenkins.git"
        }
      }


    stage ("Generate backend image"){
      steps {
        dir("TP2-Jenkins"){
          sh "mvn clean install"
          sh "docker build -t docTP2jenk ."
          }
        }
      }

    stage ("Run docker compose"){
      steps {
        dir("TP2-Jenkins"){
          sh "docker compose up -d"
          }
        }
      }
    }
  }
