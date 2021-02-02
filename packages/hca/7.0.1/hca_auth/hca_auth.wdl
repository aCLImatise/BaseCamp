version 1.0

task HcaAuth {
  command <<<
    hca auth
  >>>
  output {
    File out_stdout = stdout()
  }
}