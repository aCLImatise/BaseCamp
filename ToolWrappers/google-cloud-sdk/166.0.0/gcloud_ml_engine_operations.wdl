version 1.0

task GcloudMlengineOperations {
  input {
    String cancel
    String delete
    String describe
    String list
    String wait
  }
  command <<<
    gcloud ml_engine operations \
      ~{cancel} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{wait}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cancel: "Cancel a Cloud ML Engine operation."
    delete: "Delete a Cloud ML Engine operation."
    describe: "Describe a Cloud ML Engine operation."
    list: "List existing Cloud ML Engine jobs."
    wait: "Wait for a Cloud ML Engine operation to complete."
  }
  output {
    File out_stdout = stdout()
  }
}