version 1.0

task ComputeCLmotifScoressh {
  command <<<
    compute_CLmotif_scores_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}