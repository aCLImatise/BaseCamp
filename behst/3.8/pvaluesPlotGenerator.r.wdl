version 1.0

task PvaluesPlotGeneratorr {
  command <<<
    pvaluesPlotGenerator_r
  >>>
  output {
    File out_stdout = stdout()
  }
}