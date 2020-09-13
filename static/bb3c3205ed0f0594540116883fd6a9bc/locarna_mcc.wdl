version 1.0

task LocarnaMcc {
  command <<<
    locarna_mcc
  >>>
  output {
    File out_stdout = stdout()
  }
}