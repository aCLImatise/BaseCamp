version 1.0

task IntaRNAPlotRegionsR {
  command <<<
    IntaRNA_plotRegions_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}