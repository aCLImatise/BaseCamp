version 1.0

task GcloudKms {
  command <<<
    gcloud kms
  >>>
  output {
    File out_stdout = stdout()
  }
}