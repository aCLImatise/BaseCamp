version 1.0

task ChakinAnalysis {
  command <<<
    chakin analysis
  >>>
  output {
    File out_stdout = stdout()
  }
}