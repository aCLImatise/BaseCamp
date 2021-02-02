version 1.0

task HcaUpload {
  command <<<
    hca upload
  >>>
  output {
    File out_stdout = stdout()
  }
}