version 1.0

task ESTScan {
  command <<<
    ESTScan
  >>>
  output {
    File out_stdout = stdout()
  }
}