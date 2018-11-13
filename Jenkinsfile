pipeline {
	agent any
    stages {
		stage('Validate HTML'){
			steps {
				script{
					def files = findFiles(glob: '**/*.html')
					for (int i = 0; i<files.length; i++) {
						sh "curl -o ${files[i].name}.json -H \"Content-Type: text/html; charset=utf-8\" --data-binary @${files[i].path} https://validator.w3.org/nu/?out=json"
						sh "tail ${files[i].name}.json"
					}
				}
			}				
		}
		stage('Validate CSS'){
			steps {
				script{
					def files = findFiles(glob: '**/*.css')
					for (int i = 0; i<files.length; i++) {
						sh "curl --form "file=@${files[i].path};type=text/css" --silent --show-error http://jigsaw.w3.org/css-validator/validator "
					}
				}
			}				
		}
    }
}