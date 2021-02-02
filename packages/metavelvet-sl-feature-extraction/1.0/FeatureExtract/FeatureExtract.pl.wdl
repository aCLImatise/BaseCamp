version 1.0

task FeatureExtractpl {
  command <<<
    FeatureExtract_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}