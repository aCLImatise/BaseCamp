version 1.0

task GcloudSpanner {
  command <<<
    gcloud spanner
  >>>
  output {
    File out_stdout = stdout()
  }
}