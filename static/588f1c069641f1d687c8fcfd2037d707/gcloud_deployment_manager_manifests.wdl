version 1.0

task GcloudDeploymentmanagerManifests {
  input {
    String manifests
    String describe
    String list
  }
  command <<<
    gcloud deployment_manager manifests \
      ~{manifests} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    manifests: "SYNOPSIS"
    describe: "Provide information about a manifest."
    list: "List manifests in a deployment."
  }
  output {
    File out_stdout = stdout()
  }
}