version 1.0

task EvaluateCNV {
  command <<<
    EvaluateCNV
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}