version 1.0

task NucleosomePredictionplbak {
  command <<<
    nucleosome_prediction_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}