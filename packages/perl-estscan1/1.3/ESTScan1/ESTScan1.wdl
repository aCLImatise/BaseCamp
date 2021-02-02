version 1.0

task ESTScan1 {
  command <<<
    ESTScan1
  >>>
  output {
    File out_stdout = stdout()
  }
}