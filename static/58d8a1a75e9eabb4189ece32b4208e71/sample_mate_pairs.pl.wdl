version 1.0

task SampleMatePairspl {
  command <<<
    sample_mate_pairs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}