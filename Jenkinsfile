pipeline {
	agent any
    stages {
		stage('Validate HTML'){
			steps {
				script{
					def files = findFiles(glob: '**/*.html')
					for (int i = 0; i<files.length; i++) {
						sh "curl -o ${files[i].name}.html -H \"Content-Type: text/html; charset=utf-8\" --data-binary @${files[i].path} https://html5.validator.nu/"
						sh "cat ${files[i].name}.html"
					}
				}
			}				
		}
		stage('Validate CSS'){
			steps {
				script{
					def files = findFiles(glob: '**/*.css')
					for (int i = 0; i<files.length; i++) {
						sh "curl --form \"file=@${files[i].path};type=text/css\" -F output=xml --silent --show-error http://jigsaw.w3.org/css-validator/validator -o ${files[i].name}.html"
						sh "cat ${files[i].name}.html"
					}
				}
			}				
		}
		stage('Publish Reports'){
			steps {
				script{
					def files = findFiles(glob: '**/*.css')
					for (int i = 0; i<files.length; i++) {
						sh "curl --form \"file=@${files[i].path};type=text/css\" -F output=xml --silent --show-error http://jigsaw.w3.org/css-validator/validator -o ${files[i].name}.html"
						sh "cat ${files[i].name}.html"
					}
				}
			}
		}
    }
	post {
        always {
            archiveArtifacts artifacts: '**/*.xml', fingerprint: true
        }
    }
}