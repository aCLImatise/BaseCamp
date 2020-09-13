version 1.0

task TensorFlowSharpdll {
  command <<<
    TensorFlowSharp_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}