version 1.0

task MiRDeep2CoreAlgorithmplorig {
  command <<<
    miRDeep2_core_algorithm_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}