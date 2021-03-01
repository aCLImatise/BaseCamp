version 1.0

task TensorFlowSharpdll {
  command <<<
    TensorFlowSharp_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}