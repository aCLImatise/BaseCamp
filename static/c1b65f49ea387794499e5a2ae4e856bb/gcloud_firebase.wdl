version 1.0

task GcloudFirebase {
  command <<<
    gcloud firebase
  >>>
  output {
    File out_stdout = stdout()
  }
}