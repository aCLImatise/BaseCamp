version 1.0

task EvaluateMeraculousRunsh {
  command <<<
    evaluate_meraculous_run_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}