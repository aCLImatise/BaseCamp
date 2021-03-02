version 1.0

task GcloudComputeOperations {
  input {
    String operations
    String describe
    String list
  }
  command <<<
    gcloud compute operations \
      ~{operations} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    operations: "SYNOPSIS"
    describe: "Describe a Google Compute Engine operation."
    list: "List Google Compute Engine operations."
  }
  output {
    File out_stdout = stdout()
  }
}