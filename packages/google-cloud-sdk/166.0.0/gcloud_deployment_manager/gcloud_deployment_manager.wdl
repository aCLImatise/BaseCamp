version 1.0

task GcloudDeploymentmanager {
  command <<<
    gcloud deployment_manager
  >>>
  output {
    File out_stdout = stdout()
  }
}