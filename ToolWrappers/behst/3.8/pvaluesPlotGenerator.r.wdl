version 1.0

task PvaluesPlotGeneratorr {
  command <<<
    pvaluesPlotGenerator_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}