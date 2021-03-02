version 1.0

task EstimateSelfSimilaritypl {
  command <<<
    estimateSelfSimilarity_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}