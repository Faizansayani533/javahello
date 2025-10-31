pipeline 
{
    agent any
    environment {
	DOCKER_IMAGE = 'java-hello:1.0'
}	
    stages {
        stage('Checkout') {
            steps {
	       git branch:'main', url:"https://github.com/Faizansayani533/javahello.git"
	}
      }		
    stage('Docker Build') {
	steps {
	  if (fileExists('Dockerfile')) {
		sh "docker build -t $(env.DOCKER_IMAGE)
		} else {
		  error"Dockerfile not found int the workspace."
		}	]
    stage('Docker Run (Optional)'){
	steps {
	  sh "docker run -rm $(env.DOCKER_IMAGE)"
	}	} }
    post {
	success {  echo 'java application Docker image built successfully'  }
	failure{
	   echo 'Docker build or run failed'
	} } }
            
