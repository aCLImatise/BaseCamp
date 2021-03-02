version 1.0

task GcloudServicemanagementDisable {
  input {
    String service
    String? optional
    String? flags
  }
  command <<<
    gcloud service_management disable \
      ~{service} \
      ~{optional} \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    service: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}