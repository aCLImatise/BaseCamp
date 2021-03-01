version 1.0

task GcloudServicemanagementUndelete {
  input {
    Boolean? async
    String name
    String service
  }
  command <<<
    gcloud service_management undelete \
      ~{name} \
      ~{service} \
      ~{if (async) then "--async" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    async: "Display information about the operation in progress, without waiting\\nfor the operation to complete."
    name: "SYNOPSIS"
    service: "The name of the service to undelete."
  }
  output {
    File out_stdout = stdout()
  }
}