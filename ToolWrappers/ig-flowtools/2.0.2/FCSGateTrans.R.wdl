version 1.0

task FCSGateTransR {
  command <<<
    FCSGateTrans_R
  >>>
  output {
    File out_stdout = stdout()
  }
}