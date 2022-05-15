pipelineJob('github-demo') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        github('pafable/containerized-jenkins')
                    }
                }
            }
            scriptPath('cicd/v2/Jenkinsfile')
        }
    }
}