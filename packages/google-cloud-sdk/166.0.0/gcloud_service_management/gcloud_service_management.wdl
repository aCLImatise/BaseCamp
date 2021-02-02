version 1.0

task GcloudServicemanagement {
  command <<<
    gcloud service_management
  >>>
  output {
    File out_stdout = stdout()
  }
}