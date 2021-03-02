version 1.0

task GcloudTopicResourcekeys {
  command <<<
    gcloud topic resource_keys
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}