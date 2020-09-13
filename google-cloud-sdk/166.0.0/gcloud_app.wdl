version 1.0

task GcloudApp {
  command <<<
    gcloud app
  >>>
  output {
    File out_stdout = stdout()
  }
}