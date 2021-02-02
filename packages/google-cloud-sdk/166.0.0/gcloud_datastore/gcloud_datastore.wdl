version 1.0

task GcloudDatastore {
  command <<<
    gcloud datastore
  >>>
  output {
    File out_stdout = stdout()
  }
}