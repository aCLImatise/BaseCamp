version 1.0

task GcloudServicemanagementEnable {
  input {
    Boolean? async
    String project
    String service
  }
  command <<<
    gcloud service_management enable \
      ~{project} \
      ~{service} \
      ~{if (async) then "--async" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    async: "Display information about the operation in progress, without waiting\\nfor the operation to complete."
    project: "SYNOPSIS"
    service: "The name of the service to enable."
  }
  output {
    File out_stdout = stdout()
  }
}