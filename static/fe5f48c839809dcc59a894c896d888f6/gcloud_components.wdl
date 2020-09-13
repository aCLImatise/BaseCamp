version 1.0

task GcloudComponents {
  command <<<
    gcloud components
  >>>
  output {
    File out_stdout = stdout()
  }
}