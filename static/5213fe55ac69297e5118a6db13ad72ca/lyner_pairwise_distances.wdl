version 1.0

task LynerPairwisedistances {
  command <<<
    lyner pairwise_distances
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}