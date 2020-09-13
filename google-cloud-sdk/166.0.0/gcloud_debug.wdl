version 1.0

task GcloudDebug {
  command <<<
    gcloud debug
  >>>
  output {
    File out_stdout = stdout()
  }
}