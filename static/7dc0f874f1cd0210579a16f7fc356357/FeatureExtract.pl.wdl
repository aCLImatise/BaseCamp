version 1.0

task FeatureExtractpl {
  command <<<
    FeatureExtract_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}