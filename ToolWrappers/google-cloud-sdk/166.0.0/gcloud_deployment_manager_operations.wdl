version 1.0

task GcloudDeploymentmanagerOperations {
  input {
    String operations
    String describe
    String list
    String wait
  }
  command <<<
    gcloud deployment_manager operations \
      ~{operations} \
      ~{describe} \
      ~{list} \
      ~{wait}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    operations: "SYNOPSIS"
    describe: "Provide information about an operation."
    list: "List operations in a project."
    wait: "Wait for all operations specified to complete before returning."
  }
  output {
    File out_stdout = stdout()
  }
}