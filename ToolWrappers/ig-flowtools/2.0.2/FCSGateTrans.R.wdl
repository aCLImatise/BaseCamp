version 1.0

task FCSGateTransR {
  command <<<
    FCSGateTrans_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}