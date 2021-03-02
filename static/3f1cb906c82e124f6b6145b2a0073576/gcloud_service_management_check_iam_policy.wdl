version 1.0

task GcloudServicemanagementCheckiampolicy {
  input {
    String service
    String? optional
    String? flags
  }
  command <<<
    gcloud service_management check_iam_policy \
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