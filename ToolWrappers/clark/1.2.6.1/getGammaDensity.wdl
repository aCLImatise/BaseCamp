version 1.0

task GetGammaDensity {
  command <<<
    getGammaDensity
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}