version 1.0

task BpPairwiseKaks {
  command <<<
    bp_pairwise_kaks
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}