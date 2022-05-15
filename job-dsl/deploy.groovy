job('my deploy') {
    steps {
        shell('deploying now...')
    }
}

pipelineJob('github-demo') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        github('pafablr/containerized-jenkins')
                    }
                }
            }
            scriptPath('job-dsl/deploy.groovy')
        }
    }
}