version 1.0

task EvaluateCNV {
  command <<<
    EvaluateCNV
  >>>
  output {
    File out_stdout = stdout()
  }
}