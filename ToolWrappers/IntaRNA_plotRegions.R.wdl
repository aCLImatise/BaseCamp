version 1.0

task IntaRNAPlotRegionsR {
  command <<<
    IntaRNA_plotRegions_R
  >>>
  output {
    File out_stdout = stdout()
  }
}