version 1.0

task GcloudDns {
  command <<<
    gcloud dns
  >>>
  output {
    File out_stdout = stdout()
  }
}