version 1.0

task TransGeneScan {
  command <<<
    TransGeneScan
  >>>
  output {
    File out_stdout = stdout()
  }
}