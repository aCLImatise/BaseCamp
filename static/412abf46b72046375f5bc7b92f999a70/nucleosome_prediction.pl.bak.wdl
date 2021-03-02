version 1.0

task NucleosomePredictionplbak {
  command <<<
    nucleosome_prediction_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}