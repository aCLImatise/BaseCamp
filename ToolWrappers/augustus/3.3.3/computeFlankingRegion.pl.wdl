version 1.0

task ComputeFlankingRegionpl {
  command <<<
    computeFlankingRegion_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}