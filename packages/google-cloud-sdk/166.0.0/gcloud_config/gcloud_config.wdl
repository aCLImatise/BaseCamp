version 1.0

task GcloudConfig {
  command <<<
    gcloud config
  >>>
  output {
    File out_stdout = stdout()
  }
}