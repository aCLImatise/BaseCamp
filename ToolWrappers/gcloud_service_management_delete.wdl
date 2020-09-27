version 1.0

task GcloudServicemanagementDelete {
  input {
    String service
    String? optional
    String? flags
  }
  command <<<
    gcloud service_management delete \
      ~{service} \
      ~{optional} \
      ~{flags}
  >>>
  parameter_meta {
    service: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}