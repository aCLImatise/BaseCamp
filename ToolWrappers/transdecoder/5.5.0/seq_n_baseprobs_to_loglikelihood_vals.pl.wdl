version 1.0

task SeqNBaseprobsToLoglikelihoodValspl {
  command <<<
    seq_n_baseprobs_to_loglikelihood_vals_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}