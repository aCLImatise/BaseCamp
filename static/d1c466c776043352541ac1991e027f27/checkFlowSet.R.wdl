version 1.0

task CheckFlowSetR {
  command <<<
    checkFlowSet_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}