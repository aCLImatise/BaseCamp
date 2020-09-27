version 1.0

task GcloudServicemanagementDescribe {
  input {
    String service
    String? optional
    String? flags
  }
  command <<<
    gcloud service_management describe \
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