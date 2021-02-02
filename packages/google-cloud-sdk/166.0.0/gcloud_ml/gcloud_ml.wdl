version 1.0

task GcloudMl {
  command <<<
    gcloud ml
  >>>
  output {
    File out_stdout = stdout()
  }
}