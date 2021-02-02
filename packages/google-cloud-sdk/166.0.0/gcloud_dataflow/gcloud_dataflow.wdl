version 1.0

task GcloudDataflow {
  command <<<
    gcloud dataflow
  >>>
  output {
    File out_stdout = stdout()
  }
}