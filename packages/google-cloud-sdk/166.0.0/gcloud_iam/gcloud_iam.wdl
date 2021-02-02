version 1.0

task GcloudIam {
  command <<<
    gcloud iam
  >>>
  output {
    File out_stdout = stdout()
  }
}