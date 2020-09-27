version 1.0

task Bitbucketpipelinesyml {
  command <<<
    bitbucket_pipelines_yml
  >>>
  output {
    File out_stdout = stdout()
  }
}