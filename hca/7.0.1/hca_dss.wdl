version 1.0

task HcaDss {
  command <<<
    hca dss
  >>>
  output {
    File out_stdout = stdout()
  }
}