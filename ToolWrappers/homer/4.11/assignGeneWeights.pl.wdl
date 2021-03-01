version 1.0

task AssignGeneWeightspl {
  command <<<
    assignGeneWeights_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}