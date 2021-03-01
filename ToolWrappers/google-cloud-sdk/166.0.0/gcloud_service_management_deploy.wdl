version 1.0

task GcloudServicemanagementDeploy {
  input {
    Boolean? async
    Boolean? force
    Boolean? validate_only
  }
  command <<<
    gcloud service_management deploy \
      ~{if (async) then "--async" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (validate_only) then "--validate-only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    async: "Display information about the operation in progress, without waiting\\nfor the operation to complete."
    force: "Force the deployment even if any hazardous changes to the service\\nconfiguration are detected."
    validate_only: "If included, the command will only validate the service\\nconfiguration(s). No configuration(s) will be persisted."
  }
  output {
    File out_stdout = stdout()
  }
}