version 1.0

task ChakinFeature {
  command <<<
    chakin feature
  >>>
  output {
    File out_stdout = stdout()
  }
}