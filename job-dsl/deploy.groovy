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
            scriptPath('job-dsl/deploy.groovy')
        }
    }
}