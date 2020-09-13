version 1.0

task EstimateSelfSimilaritypl {
  command <<<
    estimateSelfSimilarity_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}