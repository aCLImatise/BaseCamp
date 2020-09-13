version 1.0

task GcloudServicemanagementOperations {
  input {
    String services
    String describe
    String wait
  }
  command <<<
    gcloud service_management operations \
      ~{services} \
      ~{describe} \
      ~{wait}
  >>>
  parameter_meta {
    services: "SYNOPSIS"
    describe: "Describes an operation resource for a given operation name."
    wait: "Waits for an operation to complete."
  }
  output {
    File out_stdout = stdout()
  }
}