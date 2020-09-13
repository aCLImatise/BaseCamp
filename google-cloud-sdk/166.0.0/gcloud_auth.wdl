version 1.0

task GcloudAuth {
  command <<<
    gcloud auth
  >>>
  output {
    File out_stdout = stdout()
  }
}