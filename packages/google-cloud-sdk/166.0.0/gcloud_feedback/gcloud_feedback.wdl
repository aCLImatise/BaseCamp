version 1.0

task GcloudFeedback {
  command <<<
    gcloud feedback
  >>>
  output {
    File out_stdout = stdout()
  }
}