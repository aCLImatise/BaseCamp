version 1.0

task GcloudCompute {
  command <<<
    gcloud compute
  >>>
  output {
    File out_stdout = stdout()
  }
}