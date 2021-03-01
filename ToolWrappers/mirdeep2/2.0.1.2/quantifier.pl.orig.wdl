version 1.0

task Quantifierplorig {
  command <<<
    quantifier_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}