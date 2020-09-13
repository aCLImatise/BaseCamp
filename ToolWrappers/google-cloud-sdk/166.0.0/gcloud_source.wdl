version 1.0

task GcloudSource {
  command <<<
    gcloud source
  >>>
  output {
    File out_stdout = stdout()
  }
}