version 1.0

task ComputeBaseProbspl {
  command <<<
    compute_base_probs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}