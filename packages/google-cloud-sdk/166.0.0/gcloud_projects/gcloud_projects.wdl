version 1.0

task GcloudProjects {
  command <<<
    gcloud projects
  >>>
  output {
    File out_stdout = stdout()
  }
}