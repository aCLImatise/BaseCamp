version 1.0

task CheckFlowSOMR {
  command <<<
    checkFlowSOM_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}