version 1.0

task Quantifierplorig {
  command <<<
    quantifier_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}