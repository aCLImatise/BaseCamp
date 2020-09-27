version 1.0

task OptInitAndTermProbspl {
  command <<<
    opt_init_and_term_probs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}