version 1.0

task GetDifferentialBedGraphpl {
  command <<<
    getDifferentialBedGraph_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}