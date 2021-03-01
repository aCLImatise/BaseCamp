version 1.0

task FeatureExtractPredictpl {
  command <<<
    FeatureExtractPredict_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}