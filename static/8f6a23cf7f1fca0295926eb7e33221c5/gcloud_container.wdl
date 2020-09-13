version 1.0

task GcloudContainer {
  command <<<
    gcloud container
  >>>
  output {
    File out_stdout = stdout()
  }
}