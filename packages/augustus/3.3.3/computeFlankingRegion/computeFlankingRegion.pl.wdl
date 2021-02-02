version 1.0

task ComputeFlankingRegionpl {
  command <<<
    computeFlankingRegion_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}