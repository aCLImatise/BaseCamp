version 1.0

task GcloudOrganizations {
  command <<<
    gcloud organizations
  >>>
  output {
    File out_stdout = stdout()
  }
}