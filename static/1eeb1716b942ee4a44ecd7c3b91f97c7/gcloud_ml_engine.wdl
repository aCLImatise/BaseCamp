version 1.0

task GcloudMlengine {
  command <<<
    gcloud ml_engine
  >>>
  output {
    File out_stdout = stdout()
  }
}