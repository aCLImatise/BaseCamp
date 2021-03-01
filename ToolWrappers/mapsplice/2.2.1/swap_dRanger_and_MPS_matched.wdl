version 1.0

task SwapDRangerAndMPSMatched {
  command <<<
    swap_dRanger_and_MPS_matched
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}