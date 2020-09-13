version 1.0

task CanSNPer2test {
  command <<<
    CanSNPer2_test
  >>>
  output {
    File out_stdout = stdout()
  }
}