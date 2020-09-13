version 1.0

task FeatureExtractPredictpl {
  command <<<
    FeatureExtractPredict_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}