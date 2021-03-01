version 1.0

task Bitbucketpipelinesyml {
  command <<<
    bitbucket_pipelines_yml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}