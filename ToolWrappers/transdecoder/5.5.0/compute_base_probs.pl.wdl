version 1.0

task ComputeBaseProbspl {
  command <<<
    compute_base_probs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}