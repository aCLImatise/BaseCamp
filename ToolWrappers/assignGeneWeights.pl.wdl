version 1.0

task AssignGeneWeightspl {
  command <<<
    assignGeneWeights_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}