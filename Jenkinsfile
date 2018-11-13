pipeline {
	agent any
    stages {
		stage('Validate'){
			steps {
				script{
					def files = findFiles(glob: '**/*.html')
					for (int i = 0; i<files.length; i++) {
						sh "curl -o ${files[i].name}.json -H \"Content-Type: text/html; charset=utf-8\" --data-binary @${files[i].path} https://validator.w3.org/nu/?out=json"
					}
				}
			}				
		}
    }
}